import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flmln/gen/flmln_bindings.dart';
import 'package:flmln/src/style/layer.dart';

export 'layer.dart';
export 'property.dart';
export 'types.dart';
export 'extensions.dart';

class Style {
  Style.fromNative(this.ptr);

  final mbgl_style_t ptr;

  T _castLayer<T>(mbgl_style_layer_t ptr, {bool ownedByDart = false}) {
    final layerType = mbgl_style_layer_get_type(ptr);

    // dart format off
    return switch (layerType) {
      MbglStyleLayerType.MbglStyleLayerType_Background => BackgroundLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_Fill => FillLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_Line => LineLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_Symbol => SymbolLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_Raster => RasterLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_Circle => CircleLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_Heatmap => HeatmapLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_Hillshade => HillshadeLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      MbglStyleLayerType.MbglStyleLayerType_FillExtrusion => FillExtrusionLayer.fromNative(ptr: ptr, ownedByDart: ownedByDart) as T,
      _ => throw UnimplementedError('Unsupported layer type: $layerType'),
    };
    // dart format on
  }

  T getLayer<T extends Layer>(String id) {
    final layerPtr = mbgl_style_get_layer(ptr, id.toNativeUtf8().cast());
    return _castLayer<T>(layerPtr, ownedByDart: false);
  }

  T removeLayer<T extends Layer>(String id) {
    final layerPtr = mbgl_style_remove_layer(ptr, id.toNativeUtf8().cast());
    return _castLayer<T>(layerPtr, ownedByDart: true);
  }

  void addLayer(Layer layer, {String? beforeLayerId}) {
    mbgl_style_add_layer(ptr, layer.ptr, beforeLayerId?.toNativeUtf8().cast() ?? nullptr);
    layer.setOwnershipToNative();
  }
}
