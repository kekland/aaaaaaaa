import '../_.dart';
import 'utils.dart';

final dartGenerator = DartGenerator._();

class DartGenerator {
  DartGenerator._();

  List<String> _doc(String? doc) {
    final c = <String>[];
    if (doc != null) {
      for (final line in doc.split('\n')) {
        c.add('/// ${line.trim()}');
      }
    }
    return c;
  }

  List<String> _generateLayer(SpecLayer layer) {
    final c = <String>[];

    final className = layer.dartClassName;

    c.addAll([
      'class $className extends Layer {',
      '  $className.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();',
      '',
    ]);

    final fields = layer.fields.values.toList();

    // Constructor
    c.add('  $className({');
    c.add('    required String id,');
    if (layer.type != 'background') c.add('    required String sourceId,');

    for (var i = 0; i < fields.length; i++) {
      final field = fields[i];
      c.add('    ${field.dartPropertyValueType}? ${field.dartName},');
    }

    c.add('    super.minZoom,');
    c.add('    super.maxZoom,');

    if (layer.type != 'background') {
      c.add('    super.sourceLayer,');
      c.add('  }): super(ptr: ${layer.cCreateFnName}(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {');
    } else {
      c.add('  }): super(ptr: ${layer.cCreateFnName}(id.toNativeUtf8().cast())) {');
    }

    for (var i = 0; i < fields.length; i++) {
      final field = fields[i];
      c.add('    if (${field.dartName} != null) this.${field.dartName} = ${field.dartName};');
    }

    c.add('  }');
    c.add('');

    for (var i = 0; i < fields.length; i++) {
      final field = fields[i];
      final isLast = i == fields.length - 1;

      c.addAll(_doc(field.doc).indented(2));
      var getter = '${field.cGetterName}(ptr)';
      getter = field.dartPropertyValueFromNative(getter);

      var setter = field.dartPropertyValueToNative('value');
      setter = '${field.cSetterName}(ptr, $setter)';

      c.add('  ${field.dartPropertyValueType} get ${field.dartName} => $getter;');
      c.add('  set ${field.dartName}(${field.dartPropertyValueType} value) => $setter;');

      if (!isLast) c.add('');
    }

    c.add('}');

    return c;
  }

  List<String> _generateEnums(List<SpecLayer> layers) {
    final c = <String>[];

    final allEnums = getEnums(layers);

    for (final enum_ in allEnums) {
      c.addAll(_doc(enum_.doc));
      c.add('enum ${enum_.dartName} {');
      final values = enum_.values.values.toList();
      for (var i = 0; i < values.length; i++) {
        final value = values[i];
        final isLast = i == values.length - 1;

        c.addAll(_doc(value.doc).indented(2));
        c.add('  ${value.dartName}${isLast ? ';' : ','}');

        if (!isLast) c.add('');
      }

      c.add('');

      c.add('  static ${enum_.dartName} _fromNative(${enum_.cTypeName} value) => switch (value) {');
      for (final value in values) {
        c.add('    ${enum_.cTypeName}.${value.cName} => ${enum_.dartName}.${value.dartName},');
      }
      c.add('  };');

      c.add('');
      c.add('  ${enum_.cTypeName} _toNative() => switch (this) {');
      for (final value in values) {
        c.add('    ${enum_.dartName}.${value.dartName} => ${enum_.cTypeName}.${value.cName},');
      }
      c.add('  };');

      c.add('}');
      c.add('');
    }

    return c;
  }

  List<String> _generatePropertyValueMethods(List<SpecLayer> layers) {
    final c = <String>[];

    final propertyValues = getPropertyValues(layers).toList();
    propertyValues.sort((a, b) {
      if (a is SpecFieldArray && b is SpecFieldArray) {
        if (a.length != null && b.length != null) {
          return a.length!.compareTo(b.length!);
        } else if (a.length != null) {
          return -1;
        } else if (b.length != null) {
          return 1;
        }
      } else if (a is SpecFieldArray) {
        return 1;
      } else if (b is SpecFieldArray) {
        return -1;
      }

      return 0;
    });

    List<String> _createPvSwitch(String Function(SpecField) resultGenerator, {bool isOnGeneric = false}) {
      final c = <String>[];

      for (final pv in propertyValues) {
        if (isOnGeneric) {
          c.add('const (${pv.dartTypeNameBase}) => ${resultGenerator(pv)},');
        } else {
          c.add('(${pv.dartTypeNameBase} v) => ${resultGenerator(pv)},');
        }
      }

      c.add('_ => throw UnimplementedError("Unsupported property value type: \$T"),');

      return c;
    }

    c.add('class PropertyValueFfi {');

    // Create
    c.add('  static mbgl_property_value_t create<T>(T value) => switch (value) {');
    c.addAll(
      _createPvSwitch((pv) => '${pv.cPropertyValueCreateConstantFnName}(${pv.castDartToNative('v')})').indented(4),
    );
    c.add('  };');
    c.add('');

    // Destroy
    c.add('  static void destroy<T>(mbgl_property_value_t ptr) => switch(T) {');
    c.addAll(
      _createPvSwitch((pv) => '${pv.cPropertyValueDestroyFnName}(ptr)', isOnGeneric: true).indented(4),
    );
    c.add('  };');
    c.add('');

    // boolean methods
    final fnNames = ['isConstant', 'isDataDriven', 'isExpression', 'isUndefined', 'isZoomConstant'];
    final cFnNames = [
      (SpecField field) => field.cPropertyValueIsConstantFnName,
      (SpecField field) => field.cPropertyValueIsDataDrivenFnName,
      (SpecField field) => field.cPropertyValueIsExpressionFnName,
      (SpecField field) => field.cPropertyValueIsUndefinedFnName,
      (SpecField field) => field.cPropertyValueIsZoomConstantFnName,
    ];

    for (var i = 0; i < fnNames.length; i++) {
      final fnName = fnNames[i];
      final cFnNameGenerator = cFnNames[i];

      c.add('  static bool $fnName<T>(mbgl_property_value_t ptr) => switch(T) {');
      c.addAll(
        _createPvSwitch((pv) => '${cFnNameGenerator(pv)}(ptr)', isOnGeneric: true).indented(4),
      );
      c.add('  };');
      c.add('');
    }

    // as constant
    c.add('  static T asConstant<T>(mbgl_property_value_t ptr) => switch(T) {');
    c.addAll(
      _createPvSwitch(
        (pv) => '${pv.castNativeToDart('${pv.cPropertyValueAsConstantFnName}(ptr)')} as T',
        isOnGeneric: true,
      ).indented(4),
    );
    c.add('  };');
    c.add('');

    c.add('}');

    return c;
  }

  List<String> generate({
    required List<SpecLayer> layers,
  }) {
    final c = <String>[];
    c.insertAll(0, dartPreamble);

    for (var i = 0; i < layers.length; i++) {
      final layer = layers[i];
      final isLast = i == layers.length - 1;

      c.addAll(_generateLayer(layer));

      if (!isLast) c.add('');
    }

    c.add('');
    c.addAll(_generateEnums(layers));
    c.add('');
    c.addAll(_generatePropertyValueMethods(layers));
    c.add('');

    return c;
  }
}
