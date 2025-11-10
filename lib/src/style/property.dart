import 'package:flmln/gen/flmln_bindings.dart';
import 'package:flmln/src/style/style.dart';
import 'package:flmln/src/utils/ffi_utils.dart';

class PropertyValue<T> extends NativeOwning<mbgl_style_property_value_t> {
  PropertyValue.constant(T value): super(ptr: propertyValueCreate(value));
  PropertyValue.fromNative(mbgl_style_property_value_t ptr) : super(ptr: ptr);
}
