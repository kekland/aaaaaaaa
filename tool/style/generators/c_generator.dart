import '../_.dart';
import 'utils.dart';

final cGenerator = CGenerator._();

typedef CCode = (List<String> hdr, List<String> src);

class CGenerator {
  CGenerator._();

  List<String> _generateDoc(String? doc) {
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

  CCode _generateEnums(List<SpecLayer> layers) {
    final hdr = <String>[];
    final src = <String>[];

    final allEnums = getEnums(layers);

    for (final enum_ in allEnums) {
      hdr.addAll(_generateDoc(enum_.doc));
      hdr.add('enum ${enum_.cName} {');
      final values = enum_.values.values.toList();
      for (var i = 0; i < values.length; i++) {
        final value = values[i];
        hdr.addAll(_generateDoc(value.doc).indented(2));
        hdr.add('  ${value.cName} = $i,');
      }
      hdr.add('};');
      hdr.add('');
    }

    for (final enum_ in allEnums) {
      src.add('${enum_.cName} ${enum_.castMbglToCName}(${enum_.mbglFullName} value) {');
      src.add('  switch (value) {');

      for (final value in enum_.values.values) {
        src.add('    case ${enum_.mbglFullName}::${value.mbglName}: return ${value.cName};');
      }

      src.add('  }');
      src.add('  throw std::invalid_argument("Unknown enum value");');
      src.add('}');
      src.add('');
      src.add('${enum_.mbglFullName} ${enum_.castCToMbglName}(${enum_.cName} value) {');
      src.add('  switch (value) {');

      for (final value in enum_.values.values) {
        src.add('    case ${value.cName}: return ${enum_.mbglFullName}::${value.mbglName};');
      }

      src.add('  }');
      src.add('  throw std::invalid_argument("Unknown enum value");');
      src.add('}');
      src.add('');
    }

    return (hdr, src);
  }

  CCode _generatePropertyValueTypedefs(List<SpecLayer> layers) {
    final hdr = <String>[];
    final src = <String>[];

    final propertyValues = getPropertyValues(layers);

    for (final field in propertyValues) {
      hdr.add('typedef void* ${field.cPropertyValueType};');
      hdr.add('');
    }

    return (hdr, src);
  }

  CCode _generateArrayMethods(SpecFieldArray field) {
    final hdr = <String>[];
    final src = <String>[];

    hdr.add('typedef void* ${field.cTypeName};');
    final createDef = '${field.cTypeName} ${field.cCreateName}';

    if (field.length != null) {
      final args = List.generate(field.length!, (i) => '${field.innerType.cTypeNameForHeader} v$i').join(', ');
      hdr.add('$hdrFnPrefix $createDef($args);');
      src.add('$srcFnPrefix $createDef($args) {');
      src.add('  auto arr = new std::array<${field.innerType.mbglTypeName}, ${field.length}>();');
      for (var i = 0; i < field.length!; i++) {
        src.add('  (*arr)[$i] = ${field.innerType.castCToMbgl('v$i')};');
      }
      src.add('  return static_cast<${field.cTypeName}>(arr);');
      src.add('}');
    } else {
      hdr.add('$hdrFnPrefix $createDef(size_t length_, ${field.innerType.cTypeNameForHeader}* values_);');
      src.add('$srcFnPrefix $createDef(size_t length_, ${field.innerType.cTypeNameForHeader}* values_) {');
      src.add('  auto arr = new std::vector<${field.innerType.mbglTypeName}>();');
      src.add('  arr->reserve(length_);');
      src.add('  for (size_t i = 0; i < length_; i++) {');
      src.add('    arr->push_back(${field.innerType.castCToMbgl('values_[i]')});');
      src.add('  }');
      src.add('  return static_cast<${field.cTypeName}>(arr);');
      src.add('}');
    }
    
    hdr.add('$hdrFnPrefix void ${field.cDestroyName}(${field.cTypeName} ptr_);');

    return (hdr, src);
  }

  CCode _generatePropertyValueMethods(List<SpecLayer> layers) {
    final hdr = <String>[];
    final src = <String>[];

    final propertyValues = getPropertyValues(layers);

    for (final field in propertyValues) {
      if (field.propertyType == 'color-ramp') continue; // TODO

      if (field is SpecFieldArray) {
        final arrayCodes = _generateArrayMethods(field);
        hdr.addAll(arrayCodes.$1);
        src.addAll(arrayCodes.$2);
        hdr.add('');
        src.add('');
      }

      final constantCreateDef =
          '${field.cPropertyValueType} ${field.cPropertyValueCreateConstantName}(${field.cTypeNameForHeader} value_)';
      final destroyDef = 'void ${field.cPropertyValueDestroyName}(${field.cPropertyValueType} ptr_)';

      hdr.add('$hdrFnPrefix $constantCreateDef;');
      hdr.add('$hdrFnPrefix $destroyDef;');
      hdr.add('');

      src.add('$srcFnPrefix $constantCreateDef {');
      src.add('  auto value = new ${field.mbglPropertyValueType}(${field.castCToMbgl('value_')});');
      src.add('  return reinterpret_cast<${field.cPropertyValueType}*>(value);');
      src.add('}');
      src.add('');
      src.add('$srcFnPrefix $destroyDef {');
      src.add('  auto value = reinterpret_cast<${field.mbglPropertyValueType}*>(ptr_);');
      src.add('  delete value;');
      src.add('}');
      src.add('');
    }

    return (hdr, src);
  }

  CCode _generateLayer(SpecLayer layer) {
    final hdr = <String>[];
    final src = <String>[];

    hdr.add('typedef void* ${layer.cName};');
    hdr.add('');

    for (final field in layer.fields.values) {
      final getterSignature = '${field.cPropertyValueTypeForHeader} ${field.cGetterName}(${layer.cName} layer_)';
      final setterSignature =
          'void ${field.cSetterName}(${layer.cName} layer_, ${field.cPropertyValueTypeForHeader} value_)';

      // Header
      hdr.add('$hdrFnPrefix $getterSignature;');
      hdr.add('$hdrFnPrefix $setterSignature;');
      hdr.add('');

      // Source
      src.add('$srcFnPrefix $getterSignature {');
      src.add('  auto layer = ${layer.castCToMbgl('layer_')};');
      src.add('  return ${field.castPropertyValueMbglToC('layer->${field.mbglGetterName}()')};');
      src.add('}');
      src.add('');
      src.add('$srcFnPrefix $setterSignature {');
      src.add('  auto layer = ${layer.castCToMbgl('layer_')};');
      src.add('  layer->${field.mbglSetterName}(${field.castPropertyValueCToMbgl('value_')});');
      src.add('}');
      src.add('');
    }

    return (hdr, src);
  }

  CCode generate({
    required List<SpecLayer> layers,
  }) {
    final hdr = <String>[];
    final src = <String>[];

    hdr.insertAll(0, cHeaderPreamble);
    src.insertAll(0, cSourcePreamble);

    final enumCodes = _generateEnums(layers);
    hdr.addAll(enumCodes.$1);
    src.addAll(enumCodes.$2);

    final propertyValueTypedefCodes = _generatePropertyValueTypedefs(layers);
    hdr.addAll(propertyValueTypedefCodes.$1);
    src.addAll(propertyValueTypedefCodes.$2);

    final propertyValueMethodCodes = _generatePropertyValueMethods(layers);
    hdr.addAll(propertyValueMethodCodes.$1);
    src.addAll(propertyValueMethodCodes.$2);

    final layerCodes = layers.map(_generateLayer);
    for (final code in layerCodes) {
      hdr.addAll(code.$1);
      src.addAll(code.$2);
    }

    return (hdr, src);
  }
}
