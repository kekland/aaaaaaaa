import 'dart:ffi';

import 'package:ffi/ffi.dart';

extension ReadCharPtr on Pointer<Char> {
  String toDartString({required bool free}) {
    final str = cast<Utf8>().toDartString();
    if (free) calloc.free(this);
    return str;
  }
}

class NativeOwning<T extends Pointer> {
  NativeOwning({required this.ptr});

  final T ptr;
}
