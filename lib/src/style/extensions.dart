import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter/widgets.dart' as ui;

import 'package:flmln/gen/flmln_bindings.dart';

extension ColorToMbgl on ui.Color {
  mbgl_color_t toMbglColor() {
    return mbgl_color_create_from_rgba(r, g, b, a);
  }
}

extension EdgeInsetsToMbgl on ui.EdgeInsets {
  mbgl_padding_t toMbglPadding() {
    return mbgl_padding_create(left, top, right, bottom);
  }
}

extension ToNativeListEnum<T extends Enum> on List<T> {
  Pointer<UnsignedInt> toNativeList(Enum Function(T) mapper) {
    final ptr = malloc.allocate<UnsignedInt>(length * sizeOf<UnsignedInt>());
    for (var i = 0; i < length; i++) ptr[i] = mapper(this[i]).index; // TODO: maybe use value?
    return ptr;
  }
}

extension ToNativeListString on List<String> {
  Pointer<Pointer<Char>> toNativeList() {
    final ptr = malloc.allocate<Pointer<Char>>(length * sizeOf<Pointer<Char>>());
    for (var i = 0; i < length; i++) ptr[i] = this[i].toNativeUtf8().cast();
    return ptr;
  }
}

extension ToNativeListFloat on List<double> {
  Pointer<Float> toNativeList() {
    final ptr = malloc.allocate<Float>(length * sizeOf<Float>());
    for (var i = 0; i < length; i++) ptr[i] = this[i];
    return ptr;
  }
}
