#!/usr/bin/env dart
// Generates the Dart style spec and the C/C++ bindings for talking to maplibre-native.

import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart' as p;

// ---------------------------------
// Configuration
// ---------------------------------

final mbglCoreUnsupportedFields = <String>{
  'text-overlap',
  'icon-overlap',
};

final mbglCoreEnumUnsupportedValues = <String, List<String>>{
  'text-rotation-alignment': ['viewport-glyph'],
  'icon-rotation-alignment': ['viewport-glyph'],
};

final scriptDir = p.dirname(Platform.script.toFilePath());
final projectRoot = p.normalize(p.join(scriptDir, '..'));
final refSpecJsonFile = File(p.join(projectRoot, 'tool', 'reference', 'v8.json'));
final spec = jsonDecode(refSpecJsonFile.readAsStringSync());

final outputDartFile = File(p.join(projectRoot, 'lib', 'gen', 'style.gen.dart'));

final outputCHeaderFile = File(p.join(projectRoot, 'src', 'src', 'flmln_style_gen.h'));
final outputCSourceFile = File(p.join(projectRoot, 'src', 'src', 'flmln_style_gen.cpp'));

// ---------------------------------
// Utilities
// ---------------------------------

List<T> jsonListAs<T>(dynamic list) => (list as List<dynamic>).cast<T>();
Map<String, T> jsonMapAs<T>(dynamic map) => (map as Map<String, dynamic>).cast<String, T>();

extension StringUtils on String {
  String capitalize() => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';

  String toCamelCase() {
    final parts = split(RegExp(r'[_\- ]+'));
    return parts.first + parts.skip(1).map((v) => v.capitalize()).join();
  }

  String toUpperCamelCase() {
    final parts = split(RegExp(r'[_\- ]+'));
    return parts.map((v) => v.capitalize()).join();
  }

  String toSnakeCase() {
    final b = StringBuffer();

    final parts = splitMapJoin(
      RegExp(r'[_\-]+|(?=[A-Z])'),
      onMatch: (m) => ' ',
      onNonMatch: (n) => n,
    ).split(' ');

    for (var i = 0; i < parts.length; i++) {
      final part = parts[i];
      if (part.isEmpty) continue;
      if (i > 0) b.write('_');
      b.write(part.toLowerCase());
    }

    return b.toString();
  }

  String toUpperSnakeCase() => toSnakeCase().toUpperCase();
}

extension Indented on List<String> {
  List<String> indented([int spaces = 2]) {
    final indent = ' ' * spaces;
    return map((line) => '$indent$line').toList();
  }
}

// ---------------------------------
// Parsing
// ---------------------------------

final List<SpecFieldEnum> globalParsedEnums = [];
void maybeAddParsedEnum(SpecFieldEnum enum_) {
  if (globalParsedEnums.any((e) => e.name == enum_.name)) return;
  globalParsedEnums.add(enum_);
}

enum SpecFieldType {
  string,
  array,
  number,
  enum_,
  boolean,
  resolvedImage,
  padding,
  formatted,
  color,
  variableAnchorOffsetCollection;

  static SpecFieldType parse(String str) => switch (str) {
    'string' => SpecFieldType.string,
    'array' => SpecFieldType.array,
    'number' => SpecFieldType.number,
    'enum' => SpecFieldType.enum_,
    'boolean' => SpecFieldType.boolean,
    'resolvedImage' => SpecFieldType.resolvedImage,
    'padding' => SpecFieldType.padding,
    'formatted' => SpecFieldType.formatted,
    'color' => SpecFieldType.color,
    'variableAnchorOffsetCollection' => SpecFieldType.variableAnchorOffsetCollection,
    _ => throw ArgumentError('Unknown SpecFieldType: $str'),
  };
}

class SpecFieldEnumValue {
  const SpecFieldEnumValue({required this.name, required this.doc});

  static Map<String, SpecFieldEnumValue> parseValues(Map<String, dynamic> values) {
    return values.map(
      (k, v) => MapEntry(
        k,
        SpecFieldEnumValue(name: k, doc: v['doc'] as String?),
      ),
    );
  }

  final String name;
  final String? doc;
}

class SpecFieldEnum extends SpecField {
  SpecFieldEnum.extend({
    required SpecField field,
    required this.values,
  }) : super(
         name: field.name,
         type: field.type,
         doc: field.doc,
         units: field.units,
         defaultValue: field.defaultValue,
         propertyType: field.propertyType,
         mbglCoreSupported: field.mbglCoreSupported,
       );

  static SpecFieldEnum parse(String name, Map<String, dynamic> field, {bool inner = false}) {
    final baseField = SpecField.parseBase(name, field, inner: inner);
    final values = SpecFieldEnumValue.parseValues(field['values'] as Map<String, dynamic>);
    final unsupportedValues = mbglCoreEnumUnsupportedValues[name] ?? [];
    values.removeWhere((k, v) => unsupportedValues.contains(k));
    return SpecFieldEnum.extend(field: baseField, values: values);
  }

  final Map<String, SpecFieldEnumValue> values;
}

class SpecFieldArray extends SpecField {
  SpecFieldArray.extend({
    required SpecField field,
    required this.innerType,
    this.length,
  }) : super(
         name: field.name,
         type: field.type,
         doc: field.doc,
         units: field.units,
         defaultValue: field.defaultValue,
         propertyType: field.propertyType,
       );

  static SpecFieldArray parse(String name, Map<String, dynamic> field) {
    final baseField = SpecField.parseBase(name, field);
    final innerType = field['value'] == 'enum'
        ? SpecFieldEnum.parse(name, field, inner: true)
        : SpecField(name: '_', type: SpecFieldType.parse(field['value'] as String));

    if (innerType is SpecFieldEnum && innerType.values.isNotEmpty) maybeAddParsedEnum(innerType);
    return SpecFieldArray.extend(
      field: baseField,
      innerType: innerType,
      length: field['length'] as int?,
    );
  }

  final SpecField innerType;
  final int? length;
}

class SpecField {
  const SpecField({
    required this.name,
    required this.type,
    this.doc,
    this.units,
    this.defaultValue,
    this.propertyType,
    this.mbglCoreSupported = true,
  });

  static SpecField parseBase(String name, Map<String, dynamic> field, {bool inner = false}) {
    final type = SpecFieldType.parse(field['type'] as String);

    final mbglCoreSupported = !mbglCoreUnsupportedFields.contains(name);
    return SpecField(
      type: type,
      name: name,
      defaultValue: inner ? null : field['default'],
      units: inner ? null : field['units'] as String?,
      doc: inner ? null : field['doc'] as String?,
      propertyType: inner ? null : field['property-type'] as String?,
      mbglCoreSupported: mbglCoreSupported,
    );
  }

  static SpecField parse(String name, Map<String, dynamic> field) {
    final type = SpecFieldType.parse(field['type'] as String);
    final result = switch (type) {
      SpecFieldType.enum_ => SpecFieldEnum.parse(name, field),
      SpecFieldType.array => SpecFieldArray.parse(name, field),
      _ => SpecField.parseBase(name, field),
    };

    if (result is SpecFieldEnum && result.values.isNotEmpty) maybeAddParsedEnum(result);
    return result;
  }

  static Map<String, SpecField> parseFields(Map<String, dynamic> fields) {
    return fields.map(
      (k, v) => MapEntry(k, SpecField.parse(k, v as Map<String, dynamic>)),
    );
  }

  final String name;
  final SpecFieldType type;
  final String? doc;
  final String? units;
  final dynamic defaultValue;
  final String? propertyType;
  final bool mbglCoreSupported;
}

class SpecLayer {
  SpecLayer({
    required this.type,
    required this.layoutFields,
    required this.paintFields,
  });

  final String type;
  final Map<String, SpecField> layoutFields;
  final Map<String, SpecField> paintFields;
}

// ---------------------------------
// Dart codegen
// ---------------------------------

String generateDartSpecFieldTypeBasic(SpecFieldType type) {
  return switch (type) {
    SpecFieldType.string => 'String',
    SpecFieldType.number => 'double',
    SpecFieldType.boolean => 'bool',
    SpecFieldType.color => 'ui.Color',
    SpecFieldType.resolvedImage => 'String',
    SpecFieldType.padding => 'ui.EdgeInsets',
    SpecFieldType.formatted => 'dynamic',
    SpecFieldType.variableAnchorOffsetCollection => 'dynamic',
    _ => throw ArgumentError('Unsupported basic type: $type'),
  };
}

String generateDartSpecFieldType(SpecField field) {
  late final String inner;
  if (field is SpecFieldArray) {
    inner = 'List<${generateDartSpecFieldType(field.innerType)}>';
  } else if (field is SpecFieldEnum) {
    inner = field.name.toUpperCamelCase();
  } else {
    inner = generateDartSpecFieldTypeBasic(field.type);
  }

  if (field.propertyType != null) {
    return switch (field.propertyType) {
      'constant' => inner,
      _ => 'PropertyValue<$inner>',
    };
  }

  return inner;
}

List<String> generateDartDoc(String? doc) {
  final c = <String>[];
  if (doc != null) {
    for (final line in doc.split('\n')) {
      c.add('/// ${line.trim()}');
    }
  }
  return c;
}

List<String> generateDartSpecLayer(SpecLayer layer) {
  final c = <String>[];
  final className = '${layer.type.toUpperCamelCase()}Layer';

  c.addAll([
    'class $className extends Layer {',
    '  $className._fromNative({required super.ptr}): super._fromNative();',
    '',
  ]);

  final fields = [...layer.layoutFields.values, ...layer.paintFields.values];

  for (var i = 0; i < fields.length; i++) {
    final field = fields[i];
    final isLast = i == fields.length - 1;

    final fieldName = field.name.toCamelCase();
    final fieldType = generateDartSpecFieldType(field);

    final cMethodPrefix = 'mbgl_style_layer_${layer.type.toSnakeCase()}';
    final cMethodSuffix = field.name.toSnakeCase();

    var getterImpl = '${cMethodPrefix}_get_$cMethodSuffix(ptr)';
    var setterImpl = 'value';

    if (field.propertyType == 'constant' && field is SpecFieldEnum) {
      getterImpl = '$fieldType._fromNative($getterImpl)';
      setterImpl = '$setterImpl._toNative()';
    } else {
      getterImpl = '$fieldType.fromNative($getterImpl)';
      setterImpl = 'value.ptr';
    }

    setterImpl = '${cMethodPrefix}_set_$cMethodSuffix(ptr, $setterImpl)';

    c.addAll(generateDartDoc(field.doc).indented());
    c.add('  $fieldType get $fieldName => $getterImpl;');
    c.add('  set $fieldName($fieldType value) => $setterImpl;');
    if (!isLast) c.add('');
  }

  c.add('}');

  return c;
}

List<String> generateDartSpecEnum(SpecFieldEnum enum_) {
  final c = <String>[];
  final enumName = enum_.name.toUpperCamelCase();

  c.addAll(generateDartDoc(enum_.doc));
  c.addAll(['enum $enumName {']);

  final values = enum_.values.values.toList();
  for (var i = 0; i < values.length; i++) {
    final value = values[i];
    final isLast = i == values.length - 1;

    c.addAll(generateDartDoc(value.doc).indented(2));
    c.add('  ${value.name.toCamelCase()}${isLast ? ';' : ','}');

    if (!isLast) c.add('');
  }

  c.add('');

  final nativeEnumName = 'MBGL_STYLE_${enum_.name.toUpperSnakeCase()}';

  c.add('  static $enumName _fromNative($nativeEnumName v) => switch (v) {');

  for (var i = 0; i < values.length; i++) {
    final value = values[i];
    c.add(
      '    $nativeEnumName.${nativeEnumName}_${value.name.toUpperSnakeCase()} => $enumName.${value.name.toCamelCase()},',
    );
  }

  c.add('  };');
  c.add('');
  c.add('  $nativeEnumName _toNative() => switch (this) {');

  for (var i = 0; i < values.length; i++) {
    final value = values[i];
    c.add(
      '    $enumName.${value.name.toCamelCase()} => $nativeEnumName.${nativeEnumName}_${value.name.toUpperSnakeCase()},',
    );
  }

  c.add('  };');
  c.add('}');

  return c;
}

List<String> generateDartCode(List<SpecLayer> layers) {
  final c = <String>[
    '// GENERATED CODE - DO NOT MODIFY BY HAND',
    '// Generated via tool/generate_style.dart',
    '',
    'part of "package:flmln/src/style/layer.dart";',
    '',
  ];

  for (final layer in layers) {
    c.addAll(generateDartSpecLayer(layer));
    c.add('');
  }

  for (final enum_ in globalParsedEnums) {
    c.addAll(generateDartSpecEnum(enum_));
    c.add('');
  }

  return c;
}

// ---------------------------------
// C codegen
// ---------------------------------

class CPropertyValueTypedef {
  CPropertyValueTypedef({required this.name, required this.field});

  final String name;
  final SpecField field;
}

final globalParsedCPropertyValueTypedefs = <String, CPropertyValueTypedef>{};

String generateCFieldFfiArgType(SpecField field) {
  if (field is SpecFieldEnum) return 'MBGL_STYLE_${field.name.toUpperSnakeCase()}';
  if (field is SpecFieldArray) {
    if (field.length != null) {
      return 'std_array_${generateCFieldPropertyValueTypeBase(field.innerType)}_${field.length}_t';
    } else {
      return 'std_vector_${generateCFieldPropertyValueTypeBase(field.innerType)}_t';
    }
  }

  return switch (field.type) {
    SpecFieldType.string => 'const char*',
    SpecFieldType.number => 'float',
    SpecFieldType.boolean => 'bool',
    SpecFieldType.color => 'mbgl_color_t',
    SpecFieldType.resolvedImage => 'mbgl_style_expression_image_t',
    SpecFieldType.padding => 'mbgl_padding_t',
    SpecFieldType.formatted => 'mbgl_style_expression_formatted_t',
    SpecFieldType.variableAnchorOffsetCollection => 'mbgl_variable_anchor_offset_collection_t',
    _ => throw ArgumentError('Unsupported basic type: ${field.type}'),
  };
}

String generateCFieldPropertyValueTypeBase(SpecField field) {
  if (field is SpecFieldEnum) {
    if (field.propertyType == 'constant') return 'MBGL_STYLE_${field.name.toUpperSnakeCase()}';
    return field.name.toSnakeCase();
  }

  if (field is SpecFieldArray) {
    if (field.length != null) {
      return 'std_array_${generateCFieldPropertyValueTypeBase(field.innerType)}_${field.length}_t';
    } else {
      return 'std_vector_${generateCFieldPropertyValueTypeBase(field.innerType)}_t';
    }
  }

  return switch (field.type) {
    SpecFieldType.string => 'string',
    SpecFieldType.number => 'number',
    SpecFieldType.boolean => 'boolean',
    SpecFieldType.color => 'mbgl_color_t',
    SpecFieldType.resolvedImage => 'mbgl_style_expression_image_t',
    SpecFieldType.padding => 'mbgl_padding_t',
    SpecFieldType.formatted => 'mbgl_style_expression_formatted_t',
    SpecFieldType.variableAnchorOffsetCollection => 'mbgl_variable_anchor_offset_collection_t',
    _ => throw ArgumentError('Unsupported basic type: ${field.type}'),
  };
}

String generateCFieldPropertyValueType(SpecField field) {
  late final String result;

  if (field.propertyType == 'constant') {
    // For constant properties, we use the basic type directly.
    return generateCFieldPropertyValueTypeBase(field);
  }

  if (field.propertyType == 'color-ramp') {
    result = 'mbgl_style_property_value_color_ramp_t';
  } else if (field is SpecFieldArray) {
    final inner = generateCFieldPropertyValueTypeBase(field.innerType);
    if (field.length != null) {
      result = 'mbgl_style_property_value_array_${inner}_${field.length}_t';
    } else {
      result = 'mbgl_style_property_value_vector_${inner}_t';
    }
  } else if (field is SpecFieldEnum) {
    final enumName = field.name.toSnakeCase();
    result = 'mbgl_style_property_value_${enumName}_t';
  } else {
    result = 'mbgl_style_property_value_${generateCFieldPropertyValueTypeBase(field)}_t';
  }

  globalParsedCPropertyValueTypedefs[result] = CPropertyValueTypedef(name: result, field: field);
  return result;
}

String generateCppBasicFieldName(SpecField field) {
  if (field is SpecFieldEnum) {
    return 'style::${getCppEnumName(field)}';
  }

  return switch (field.type) {
    SpecFieldType.string => 'std::string',
    SpecFieldType.number => 'float',
    SpecFieldType.boolean => 'bool',
    SpecFieldType.color => 'mbgl::Color',
    SpecFieldType.resolvedImage => 'mbgl::style::expression::Image',
    SpecFieldType.padding => 'mbgl::Padding',
    SpecFieldType.formatted => 'mbgl::style::expression::Formatted',
    SpecFieldType.variableAnchorOffsetCollection => 'mbgl::VariableAnchorOffsetCollection',
    _ => throw ArgumentError('Unsupported basic type: ${field.type}'),
  };
}

String generateCppFieldName(SpecField field) {
  if (field.propertyType == 'constant') {
    return generateCppBasicFieldName(field);
  }

  if (field is SpecFieldArray) {
    final inner = generateCppBasicFieldName(field.innerType);
    if (field.length != null) {
      return 'std::array<$inner, ${field.length}>';
    } else {
      return 'std::vector<$inner>';
    }
  } else {
    return generateCppBasicFieldName(field);
  }
}

List<String> generateCDoc(String? doc) {
  final c = <String>[];
  if (doc != null) {
    c.add('/**');
    for (final line in doc.split('\n')) {
      c.add(' * ${line.trim()}');
    }
    c.add(' */');
  }
  return c;
}

String generateCppMlnLayerName(SpecLayer layer) {
  return switch (layer.type) {
    'fill' => 'FillLayer',
    'fill-extrusion' => 'FillExtrusionLayer',
    'line' => 'LineLayer',
    'circle' => 'CircleLayer',
    'symbol' => 'SymbolLayer',
    'raster' => 'RasterLayer',
    'heatmap' => 'HeatmapLayer',
    'background' => 'BackgroundLayer',
    'hillshade' => 'HillshadeLayer',
    _ => throw ArgumentError('Unknown layer type: ${layer.type}'),
  };
}

String getCppEnumName(SpecFieldEnum enum_) {
  if (enum_.name.endsWith('-translate-anchor')) return 'TranslateAnchorType';
  if (enum_.name == 'icon-anchor') return 'SymbolAnchorType';
  if (enum_.name == 'text-anchor') return 'SymbolAnchorType';
  if (enum_.name == 'circle-pitch-alignment') return 'AlignmentType';
  if (enum_.name == 'icon-pitch-alignment') return 'AlignmentType';
  if (enum_.name == 'text-pitch-alignment') return 'AlignmentType';
  if (enum_.name == 'text-rotation-alignment') return 'AlignmentType';
  if (enum_.name == 'icon-rotation-alignment') return 'AlignmentType';

  return '${enum_.name.toUpperCamelCase()}Type';
}

(List<String>, List<String>) generateCSpecLayer(SpecLayer layer) {
  final hdr = <String>[];
  final src = <String>[];
  final prefix = 'mbgl_style_layer_${layer.type.toSnakeCase()}';
  final typedefName = '${prefix}_t';

  hdr.add('typedef void* $typedefName;');
  hdr.add('');

  final fields = [...layer.layoutFields.values, ...layer.paintFields.values];
  for (var i = 0; i < fields.length; i++) {
    final field = fields[i];
    final isLast = i == fields.length - 1;
    final isConstant = field.propertyType == 'constant';

    final fieldName = field.name.toSnakeCase();
    var type = generateCFieldPropertyValueType(field);
    if (field is SpecFieldEnum && isConstant) {
      type = 'enum $type';
    }

    hdr.add('EXTERNC FLMLN_EXPORT void ${prefix}_set_$fieldName($typedefName layer_, $type value);');
    hdr.add('EXTERNC FLMLN_EXPORT $type ${prefix}_get_$fieldName($typedefName layer_);');

    final layerCast = 'auto layer = reinterpret_cast<style::${generateCppMlnLayerName(layer)}*>(layer_);';
    final cppFieldType = generateCppFieldName(field);
    var cppPropertyValueType = 'style::PropertyValue<$cppFieldType>';
    final cppFieldName = field.name.toUpperCamelCase();

    if (field.propertyType == 'color-ramp') {
      cppPropertyValueType = 'style::ColorRampPropertyValue';
    }

    String fromCppCast = 'layer->get$cppFieldName()';
    String toCppCast = 'value';

    if (!isConstant) {
      fromCppCast = 'reinterpret_cast<$type>(const_cast<$cppPropertyValueType*>(&$fromCppCast))';
      toCppCast = '*reinterpret_cast<$cppPropertyValueType*>($toCppCast)';
    } else {
      if (field is SpecFieldEnum) {
        fromCppCast = '${getFromCppEnumFunctionName(field)}($fromCppCast)';
        toCppCast = '${getToCppEnumFunctionName(field)}($toCppCast)';
      }
    }

    src.add('EXTERNC void ${prefix}_set_$fieldName($typedefName layer_, $type value) {');
    src.add('  $layerCast');
    src.add('  layer->set$cppFieldName($toCppCast);');
    src.add('}');

    src.add('');

    src.add('EXTERNC $type ${prefix}_get_$fieldName($typedefName layer_) {');
    src.add('  $layerCast');
    src.add('  return $fromCppCast;');
    src.add('}');

    if (!isLast) {
      hdr.add('');
      src.add('');
    }
  }

  return (hdr, src);
}

String getFromCppEnumFunctionName(SpecFieldEnum enum_) {
  return '${enum_.name.toSnakeCase()}_from_cpp_enum';
}

String getToCppEnumFunctionName(SpecFieldEnum enum_) {
  return '${enum_.name.toSnakeCase()}_to_cpp_enum';
}

List<String> generateCppEnumMappers() {
  final c = <String>[];

  final enums = globalParsedEnums;
  for (final enum_ in enums) {
    final cEnumName = 'MBGL_STYLE_${enum_.name.toUpperSnakeCase()}';

    final cppEnumName = getCppEnumName(enum_);
    final cppEnumValues = enum_.values.values.map((v) => v.name.toUpperCamelCase()).toList();

    c.add('inline style::$cppEnumName ${getToCppEnumFunctionName(enum_)}($cEnumName value) {');
    c.add('  switch (value) {');
    final values = enum_.values.values.toList();
    for (var i = 0; i < values.length; i++) {
      final value = values[i];
      c.add(
        '    case $cEnumName::${cEnumName}_${value.name.toUpperSnakeCase()}: return style::$cppEnumName::${cppEnumValues[i]};',
      );
    }
    c.add('  }');
    c.add('  throw std::invalid_argument("Invalid enum value");');
    c.add('}');
    c.add('');
    c.add('inline $cEnumName ${getFromCppEnumFunctionName(enum_)}(style::$cppEnumName value) {');
    c.add('  switch (value) {');
    for (var i = 0; i < values.length; i++) {
      final value = values[i];
      c.add(
        '    case style::$cppEnumName::${cppEnumValues[i]}: return $cEnumName::${cEnumName}_${value.name.toUpperSnakeCase()};',
      );
    }
    c.add('  }');
    c.add('  throw std::invalid_argument("Invalid enum value");');
    c.add('}');
    c.add('');
  }

  return c;
}

List<String> generateCEnums() {
  final c = <String>[];
  for (final enum_ in globalParsedEnums) {
    c.addAll(generateCDoc(enum_.doc));

    final enumName = 'MBGL_STYLE_${enum_.name.toUpperSnakeCase()}';
    c.add('enum $enumName {');

    final values = enum_.values.values.toList();
    for (var i = 0; i < values.length; i++) {
      final value = values[i];
      final isLast = i == values.length - 1;

      c.addAll(generateCDoc(value.doc).indented(2));
      c.add('  ${enumName}_${value.name.toUpperSnakeCase()} = $i,');

      if (!isLast) c.add('');
    }

    c.add('};');
    c.add('');
  }

  return c;
}

(List<String>, List<String>) createPropertyValueMethods() {
  final hdr = <String>[];
  final src = <String>[];

  final propertyValueTypedefs = globalParsedCPropertyValueTypedefs.values.toList();

  for (final v in propertyValueTypedefs) {
    final t = v.name;
    final field = v.field;

    final functionName = t.substring(0, t.length - 2);
    final argType = generateCFieldFfiArgType(field);
    var createCast = 'value';

    if (field is SpecFieldArray) {
      // Create array/vector creation/destruction methods
      final argTypeFunctionName = argType.substring(0, argType.length - 2);
      final innerTypeName = generateCFieldFfiArgType(field.innerType);
      final cppType = field.length != null
          ? 'std::array<$innerTypeName, ${field.length}>'
          : 'std::vector<$innerTypeName>';
      hdr.add('typedef void* $argType;');

      if (field.length != null) {
        final args = List.generate(field.length!, (i) => '$innerTypeName v$i').join(', ');
        final initializer = '{${List.generate(field.length!, (i) => 'v$i').join(', ')}}';
        hdr.add('EXTERNC FLMLN_EXPORT $argType ${argTypeFunctionName}_create($args);');
        src.add('EXTERNC $argType ${argTypeFunctionName}_create($args) {');
        src.add('  auto arr = new $cppType($initializer);');
        src.add('  return reinterpret_cast<$argType>(arr);');
        src.add('}');
        src.add('');

        createCast = '*reinterpret_cast<$cppType*>($createCast)';
      } else {
        hdr.add(
          'EXTERNC FLMLN_EXPORT $argType ${argTypeFunctionName}_create(size_t length, const $innerTypeName* values);',
        );
        src.add('EXTERNC $argType ${argTypeFunctionName}_create(size_t length, const $innerTypeName* values) {');
        src.add('  auto vec = new $cppType(values, values + length);');
        src.add('  return reinterpret_cast<$argType>(vec);');
        src.add('}');
        src.add('');

        createCast = '*reinterpret_cast<$cppType*>($createCast)';
      }

      hdr.add('EXTERNC FLMLN_EXPORT void ${argTypeFunctionName}_destroy($argType ptr);');
      hdr.add('');
      src.add('EXTERNC void ${argTypeFunctionName}_destroy($argType ptr) {');
      src.add('  auto arr = reinterpret_cast<$cppType*>(ptr);');
      src.add('  delete arr;');
      src.add('}');
      src.add('');
    }

    if (field is SpecFieldEnum) {
      createCast = '${getToCppEnumFunctionName(field)}($createCast)';
    }

    hdr.add('EXTERNC FLMLN_EXPORT $t ${functionName}_create_constant($argType value);');
    hdr.add('EXTERNC FLMLN_EXPORT void ${functionName}_destroy($t ptr);');
    hdr.add('');
    src.add('EXTERNC $t ${functionName}_create_constant($argType value) {');
    src.add('  auto pv = new style::PropertyValue<${generateCppFieldName(field)}>($createCast);');
    src.add('  return reinterpret_cast<$t>(pv);');
    src.add('}');
  }

  return (hdr, src);
}

(List<String>, List<String>) generateCCode(List<SpecLayer> layers) {
  final hdr = <String>[];
  final src = <String>[];

  hdr.addAll([
    '// GENERATED CODE - DO NOT MODIFY BY HAND',
    '// Generated via tool/generate_style.dart',
    '',
    '#pragma once',
    '',
    '#include "flmln.h"',
    '',
  ]);

  final hdrStartIndex = hdr.length;

  src.addAll([
    '// GENERATED CODE - DO NOT MODIFY BY HAND',
    '// Generated via tool/generate_style.dart',
    '',
    '#include "flmln_style_gen.h"',
    '',
    '#include <mbgl/style/layer.hpp>',
    '#include <mbgl/style/types.hpp>',
    '#include <mbgl/style/layers/fill_layer.hpp>',
    '#include <mbgl/style/layers/fill_extrusion_layer.hpp>',
    '#include <mbgl/style/layers/line_layer.hpp>',
    '#include <mbgl/style/layers/circle_layer.hpp>',
    '#include <mbgl/style/layers/symbol_layer.hpp>',
    '#include <mbgl/style/layers/raster_layer.hpp>',
    '#include <mbgl/style/layers/heatmap_layer.hpp>',
    '#include <mbgl/style/layers/background_layer.hpp>',
    '#include <mbgl/style/layers/hillshade_layer.hpp>',
    '',
    'using namespace mbgl;',
    '',
  ]);

  // C++ enum mappers
  final enumMappers = generateCppEnumMappers();
  src.addAll(enumMappers);

  // C enums
  final enumDefs = generateCEnums();
  hdr.addAll(enumDefs);

  for (final layer in layers) {
    final (layerHdr, layerSrc) = generateCSpecLayer(layer);
    hdr.addAll(layerHdr);
    src.addAll(layerSrc);
    hdr.add('');
    src.add('');
  }

  hdr.insertAll(hdrStartIndex, [
    for (final def in globalParsedCPropertyValueTypedefs.values) 'typedef void* ${def.name};',
    '',
  ]);

  // PropertyValue methods
  final (pvHdr, pvSrc) = createPropertyValueMethods();
  hdr.addAll(pvHdr);
  src.addAll(pvSrc);

  return (hdr, src);
}

// ---------------------------------
// Testing area
// ---------------------------------

void main() {
  var layers = <SpecLayer>[];
  final layerTypes = jsonMapAs(spec['layer']['type']['values']).keys;

  for (final type in layerTypes) {
    final name = type;
    final paintFields = SpecField.parseFields(jsonMapAs(spec['paint_$name']));
    final layoutFields = SpecField.parseFields(jsonMapAs(spec['layout_$name']));

    paintFields.removeWhere((key, field) => !field.mbglCoreSupported);
    layoutFields.removeWhere((key, field) => !field.mbglCoreSupported);

    layers.add(SpecLayer(type: name, layoutFields: layoutFields, paintFields: paintFields));
  }

  globalParsedEnums.removeWhere((v) => v.values.isEmpty || !v.mbglCoreSupported);

  // Dart

  final dartCode = generateDartCode(layers);
  outputDartFile.writeAsStringSync(dartCode.join('\n'));

  // C/C++

  final (cHdrCode, cSrcCode) = generateCCode(layers);
  outputCHeaderFile.writeAsStringSync(cHdrCode.join('\n'));
  outputCSourceFile.writeAsStringSync(cSrcCode.join('\n'));
}
