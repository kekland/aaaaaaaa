import '../_.dart';

const hdrFnPrefix = 'EXTERNC FLMLN_EXPORT';
const srcFnPrefix = 'EXTERNC';

extension SpecLayerCUtils on SpecLayer {
  String get cPrefix => 'mbgl_style_${type.toSnakeCase()}_layer';
  String get cName => '${cPrefix}_t';

  String get mbglClassName => 'style::${type.toUpperCamelCase()}Layer';
  String castCToMbgl(String varName) => 'reinterpret_cast<$mbglClassName*>($varName)';
}

extension SpecFieldEnumValueCUtils on SpecFieldEnumValue {
  String get cName => 'MBGL_STYLE_${parent.toUpperSnakeCase()}_${name.toUpperSnakeCase()}';
  String get mbglName => name.toUpperCamelCase();
}

extension SpecFieldEnumCUtils on SpecFieldEnum {
  String get cName => 'MBGL_STYLE_${name.toUpperSnakeCase()}';

  String get mbglName {
    final result = switch (name) {
      'fill-translate-anchor' => 'TranslateAnchor',
      'fill-extrusion-translate-anchor' => 'TranslateAnchor',
      'line-translate-anchor' => 'TranslateAnchor',
      'circle-translate-anchor' => 'TranslateAnchor',
      'icon-translate-anchor' => 'TranslateAnchor',
      'text-translate-anchor' => 'TranslateAnchor',
      'icon-anchor' => 'SymbolAnchor',
      'text-anchor' => 'SymbolAnchor',
      'circle-pitch-alignment' => 'Alignment',
      'icon-pitch-alignment' => 'Alignment',
      'text-pitch-alignment' => 'Alignment',
      'text-rotation-alignment' => 'Alignment',
      'icon-rotation-alignment' => 'Alignment',
      _ => name.toUpperCamelCase(),
    };

    return '${result}Type';
  }

  String get mbglFullName => 'style::$mbglName';

  String get castMbglToCName => '${name.toSnakeCase()}_to_c';
  String get castCToMbglName => '${name.toSnakeCase()}_to_mbgl';

  String castMbglToC(String varName) => '$castMbglToCName($varName)';
  String castCToMbgl(String varName) => '$castCToMbglName($varName)';
}

extension SpecFieldArrayCUtils on SpecFieldArray {
  String get cCreateName {
    if (length != null) return 'mbgl_style_std_array_${innerType.cTypeNameBase.toLowerCase()}_${length}_create';
    return 'mbgl_style_std_vector_${innerType.cTypeNameBase.toLowerCase()}_create';
  }

  String get cDestroyName {
    if (length != null) return 'mbgl_style_std_array_${innerType.cTypeNameBase.toLowerCase()}_${length}_destroy';
    return 'mbgl_style_std_vector_${innerType.cTypeNameBase.toLowerCase()}';
  }
}

extension SpecFieldCUtils on SpecField {
  String get cPrefix => 'mbgl_style_${parent.toSnakeCase()}_layer';
  String get cName => '${cPrefix}_${name.toSnakeCase()}';
  String get cGetterName => '${cName}_get';
  String get cSetterName => '${cName}_set';

  String get cTypeNameBase {
    if (this is SpecFieldArray) {
      final _this = this as SpecFieldArray;
      if (_this.length != null) return 'std_array_${_this.innerType.cTypeNameBase.toLowerCase()}_${_this.length}';
      return 'std_vector_${_this.innerType.cTypeNameBase.toLowerCase()}';
    }

    return switch (type) {
      SpecFieldType.string => 'const_char',
      SpecFieldType.number => 'float',
      SpecFieldType.boolean => 'bool',
      SpecFieldType.color => 'mbgl_color',
      SpecFieldType.padding => 'mbgl_padding',
      SpecFieldType.variableAnchorOffsetCollection => 'mbgl_variable_anchor_offset_collection',
      SpecFieldType.resolvedImage => 'mbgl_style_expression_image',
      SpecFieldType.formatted => 'mbgl_style_expression_formatted',
      SpecFieldType.enum_ => (this as SpecFieldEnum).cName,
      SpecFieldType.array => throw UnimplementedError(), // Handled above
    };
  }

  String get cTypeName {
    return switch (type) {
      SpecFieldType.string => 'const char*',
      SpecFieldType.number => 'float',
      SpecFieldType.boolean => 'bool',
      SpecFieldType.enum_ => (this as SpecFieldEnum).cName,
      _ => '${cTypeNameBase}_t',
    };
  }

  String get cTypeNameForHeader {
    if (this is SpecFieldEnum) return 'enum $cTypeName';
    return cTypeName;
  }

  String get cPropertyValueTypeNameBase {
    return switch (type) {
      SpecFieldType.string => 'string',
      SpecFieldType.number => 'float',
      SpecFieldType.boolean => 'bool',
      _ => cTypeNameBase,
    };
  }

  String get cPropertyValuePrefix => 'mbgl_style_property_value';

  String get cPropertyValueType {
    if (propertyType == 'constant') return cTypeName;
    if (propertyType == 'color-ramp') return 'mbgl_style_property_value_mbgl_color_ramp_t';

    return '${cPropertyValuePrefix}_${cPropertyValueTypeNameBase.toLowerCase()}_t';
  }

  String get cPropertyValueTypeForHeader {
    if (cPropertyValueType.startsWith('mbgl_style_property_value_')) return cPropertyValueType;
    if (this is SpecFieldEnum) return 'enum $cPropertyValueType';
    return cPropertyValueType;
  }

  String get mbglTypeName {
    if (this is SpecFieldArray) {
      final _this = this as SpecFieldArray;
      if (_this.length != null) return 'std::array<${_this.innerType.mbglTypeName}, ${_this.length}>';
      return 'std::vector<${_this.innerType.mbglTypeName}>';
    }

    return switch (type) {
      SpecFieldType.string => 'std::string',
      SpecFieldType.number => 'float',
      SpecFieldType.boolean => 'bool',
      SpecFieldType.color => 'Color',
      SpecFieldType.padding => 'Padding',
      SpecFieldType.variableAnchorOffsetCollection => 'VariableAnchorOffsetCollection',
      SpecFieldType.resolvedImage => 'style::expression::Image',
      SpecFieldType.formatted => 'style::expression::Formatted',
      SpecFieldType.enum_ => (this as SpecFieldEnum).mbglFullName,
      SpecFieldType.array => throw UnimplementedError(), // Handled above
    };
  }

  String get mbglGetterName => 'get${name.toUpperCamelCase()}';
  String get mbglSetterName => 'set${name.toUpperCamelCase()}';

  String get mbglPropertyValueType {
    if (propertyType == 'constant') return mbglTypeName;
    if (propertyType == 'color-ramp') return 'style::ColorRampPropertyValue';
    return 'style::PropertyValue<$mbglTypeName>';
  }

  String castMbglToC(String varName) {
    if (this is SpecFieldEnum) {
      final _this = this as SpecFieldEnum;
      return _this.castMbglToC(varName);
    }

    return varName;
  }

  String castCToMbgl(String varName) {
    if (this is SpecFieldEnum) return (this as SpecFieldEnum).castCToMbgl(varName);
    if (this is SpecFieldArray) return '*reinterpret_cast<$mbglTypeName*>($varName)';

    return switch (type) {
      SpecFieldType.string => 'std::string($varName)',
      SpecFieldType.number => varName,
      SpecFieldType.boolean => varName,
      _ => '*reinterpret_cast<$mbglTypeName*>($varName)',
    };
  }

  String castPropertyValueMbglToC(String varName) {
    if (propertyType == 'constant') return castMbglToC(varName);
    return 'reinterpret_cast<$cPropertyValueType>(const_cast<$mbglPropertyValueType*>(&$varName))';
  }

  String castPropertyValueCToMbgl(String varName) {
    if (propertyType == 'constant') return castCToMbgl(varName);
    return '*reinterpret_cast<$mbglPropertyValueType*>($varName)';
  }

  String get cPropertyValueCreateConstantName =>
      '${cPropertyValuePrefix}_${cPropertyValueTypeNameBase.toLowerCase()}_create_constant';
  String get cPropertyValueDestroyName => '${cPropertyValuePrefix}_${cPropertyValueTypeNameBase.toLowerCase()}_destroy';
}

extension SpecLayerDartUtils on SpecLayer {
  String get dartClassName => '${type.toUpperCamelCase()}Layer';
}

extension SpecFieldEnumValueDartUtils on SpecFieldEnumValue {
  String get dartName => name.toCamelCase();
}

extension SpecFieldEnumDartUtils on SpecFieldEnum {
  String get dartName => name.toUpperCamelCase();

  String get dartToNativeName => '$dartName._toNative';
  String get dartFromNativeName => '$dartName._fromNative';

  String castDartToNative(String varName) => '$varName._toNative()';
  String castNativeToDart(String varName) => '$dartFromNativeName($varName)';
}

extension SpecFieldDartUtils on SpecField {
  String get dartName => name.toCamelCase();

  String get dartTypeNameBase {
    if (this is SpecFieldArray) {
      final _this = this as SpecFieldArray;
      return 'List<${_this.innerType.dartTypeNameBase}>';
    }

    return switch (type) {
      SpecFieldType.string => 'String',
      SpecFieldType.number => 'double',
      SpecFieldType.boolean => 'bool',
      SpecFieldType.color => 'ui.Color',
      SpecFieldType.padding => 'ui.EdgeInsets',
      SpecFieldType.variableAnchorOffsetCollection => 'VariableAnchorOffsetCollection',
      SpecFieldType.resolvedImage => 'ResolvedImage',
      SpecFieldType.formatted => 'Formatted',
      SpecFieldType.enum_ => (this as SpecFieldEnum).dartName,
      SpecFieldType.array => throw UnimplementedError(), // Handled above
    };
  }

  String get dartPropertyValueType {
    if (propertyType == 'constant') return dartTypeNameBase;
    return 'PropertyValue<$dartTypeNameBase>';
  }

  String castDartToNative(String varName) {
    if (this is SpecFieldEnum) {
      final _this = this as SpecFieldEnum;
      return _this.castDartToNative(varName);
    }

    if (this is SpecFieldArray) {
      final _this = this as SpecFieldArray;
      if (_this.length == null) {
        late final String cast;

        if (_this.innerType is SpecFieldEnum) {
          cast = 'v.toNativeList((e) => e._toNative())';
        } else {
          cast = 'v.toNativeList()';
        }

        return '${_this.cCreateName}(v.length, $cast)';
      } else {
        var args = <String>[];
        for (var i = 0; i < _this.length!; i++) {
          args.add(_this.innerType.castDartToNative('$varName[$i]'));
        }
        return '${_this.cCreateName}(${args.join(', ')})';
      }
    }

    return switch (type) {
      SpecFieldType.string => '$varName.toNativeUtf8().cast()',
      SpecFieldType.color => '$varName.toMbglColor()',
      SpecFieldType.padding => '$varName.toMbglPadding()',
      SpecFieldType.formatted => 'nullptr', // TODO
      SpecFieldType.resolvedImage => 'nullptr', // TODO
      SpecFieldType.variableAnchorOffsetCollection => 'nullptr', // TODO
      _ => varName,
    };
  }

  String castNativeToDart(String varName) {
    if (this is SpecFieldEnum) {
      final _this = this as SpecFieldEnum;
      return _this.castNativeToDart(varName);
    }

    return varName;
  }

  String dartPropertyValueFromNative(String varName) {
    if (propertyType == 'constant') return castNativeToDart(varName);
    return 'PropertyValue<$dartTypeNameBase>.fromNative($varName)';
  }

  String dartPropertyValueToNative(String varName) {
    if (propertyType == 'constant') return castDartToNative(varName);
    return '$varName.ptr';
  }
}

Set<SpecField> getPropertyValues(List<SpecLayer> layers) {
  final propertyValues = <SpecField>{};
  final _added = <String>{};

  for (final layer in layers) {
    for (final field in layer.fields.values) {
      final type = field.cPropertyValueType;
      if (field.cPropertyValueType.startsWith('mbgl_style_property_value_')) {
        if (!_added.contains(type)) {
          propertyValues.add(field);
          _added.add(type);
        }
      }
    }
  }

  return propertyValues;
}

Set<SpecFieldEnum> getEnums(List<SpecLayer> layers) {
  final enums = <SpecFieldEnum>{};
  final _added = <String>{};

  for (final layer in layers) {
    for (final field in layer.fields.values) {
      if (field is SpecFieldEnum) {
        if (!_added.contains(field.cName)) {
          enums.add(field);
          _added.add(field.cName);
        }
      } else if (field is SpecFieldArray && field.innerType is SpecFieldEnum) {
        final enumField = field.innerType as SpecFieldEnum;
        if (!_added.contains(enumField.cName)) {
          enums.add(enumField);
          _added.add(enumField.cName);
        }
      }
    }
  }

  return enums;
}
