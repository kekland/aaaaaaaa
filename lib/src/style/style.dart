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

  T getLayer<T extends Layer>(String id) {
    final layerPtr = mbgl_style_get_layer(ptr, id.toNativeUtf8().cast());
    final layerType = mbgl_style_layer_get_type(layerPtr);

    return switch (layerType) {
      MbglStyleLayerType.MbglStyleLayerType_Background => BackgroundLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_Fill => FillLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_Line => LineLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_Symbol => SymbolLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_Raster => RasterLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_Circle => CircleLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_Heatmap => HeatmapLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_Hillshade => HillshadeLayer.fromNative(ptr: layerPtr) as T,
      MbglStyleLayerType.MbglStyleLayerType_FillExtrusion => FillExtrusionLayer.fromNative(ptr: layerPtr) as T,
      _ => throw UnimplementedError('Unsupported layer type: $layerType'),
    };
  }
}
