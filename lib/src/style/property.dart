import 'package:flmln/gen/flmln_bindings.dart';
import 'package:flmln/src/style/style.dart';
import 'package:flmln/src/utils/ffi_utils.dart';

class PropertyValue<T> extends NativeOwning<mbgl_style_property_value_t> {
  PropertyValue.constant(T value) : super(ptr: PropertyValueFfi.create(value), ownedByDart: true);
  PropertyValue.fromNative(mbgl_style_property_value_t ptr) : super(ptr: ptr, ownedByDart: false);

  bool get isConstant => PropertyValueFfi.isConstant<T>(ptr);
  bool get isDataDriven => PropertyValueFfi.isDataDriven<T>(ptr);
  bool get isExpression => PropertyValueFfi.isExpression<T>(ptr);
  bool get isUndefined => PropertyValueFfi.isUndefined<T>(ptr);
  bool get isZoomConstant => PropertyValueFfi.isZoomConstant<T>(ptr);

  T get asConstant => PropertyValueFfi.asConstant<T>(ptr);
}
