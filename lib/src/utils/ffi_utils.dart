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
  NativeOwning({required this.ptr, required this.ownedByDart});

  final T ptr;
  bool ownedByDart;

  void setOwnershipToDart() {
    ownedByDart = true;
  }

  void setOwnershipToNative() {
    ownedByDart = false;
  }
}
