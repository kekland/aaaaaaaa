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
      '  $className.fromNative({required super.ptr}) : super.fromNative();',
      '',
    ]);

    final fields = layer.fields.values.toList();
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

    c.add('mbgl_property_value_t propertyValueCreate<T>(T value) => switch (value) {');
    for (final pv in propertyValues) {
      if (pv is SpecFieldArray && pv.length != null) {
        c.add(
          '  (${pv.dartTypeNameBase} v) when value.length == ${pv.length} => ${pv.cPropertyValueCreateConstantName}(${pv.castDartToNative('v')}),',
        );
      } else {
        c.add('  (${pv.dartTypeNameBase} v) => ${pv.cPropertyValueCreateConstantName}(${pv.castDartToNative('v')}),');
      }
    }
    c.add('  _ => throw UnimplementedError("Unsupported property value type: \$T"),');
    c.add('};');
    c.add('');

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
