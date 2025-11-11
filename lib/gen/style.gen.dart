// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated via tool/generate_style.dart

part of "package:flmln/src/style/layer.dart";

class FillLayer extends Layer {
  FillLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  FillLayer({
    required String id,
    required String sourceId,
    PropertyValue<double>? fillSortKey,
    Visibility? visibility,
    PropertyValue<bool>? fillAntialias,
    PropertyValue<double>? fillOpacity,
    PropertyValue<ui.Color>? fillColor,
    PropertyValue<ui.Color>? fillOutlineColor,
    PropertyValue<(double, double)>? fillTranslate,
    PropertyValue<FillTranslateAnchor>? fillTranslateAnchor,
    PropertyValue<ResolvedImage>? fillPattern,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_fill_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (fillSortKey != null) this.fillSortKey = fillSortKey;
    if (visibility != null) this.visibility = visibility;
    if (fillAntialias != null) this.fillAntialias = fillAntialias;
    if (fillOpacity != null) this.fillOpacity = fillOpacity;
    if (fillColor != null) this.fillColor = fillColor;
    if (fillOutlineColor != null) this.fillOutlineColor = fillOutlineColor;
    if (fillTranslate != null) this.fillTranslate = fillTranslate;
    if (fillTranslateAnchor != null) this.fillTranslateAnchor = fillTranslateAnchor;
    if (fillPattern != null) this.fillPattern = fillPattern;
  }

  /// Sorts features in ascending order based on this value. Features with a higher sort key will appear above features with a lower sort key.
  PropertyValue<double> get fillSortKey => PropertyValue<double>.fromNative(mbgl_style_fill_layer_fill_sort_key_get(ptr));
  set fillSortKey(PropertyValue<double> value) => mbgl_style_fill_layer_fill_sort_key_set(ptr, value.ptr);

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_fill_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_fill_layer_visibility_set(ptr, value._toNative());

  /// Whether or not the fill should be antialiased.
  PropertyValue<bool> get fillAntialias => PropertyValue<bool>.fromNative(mbgl_style_fill_layer_fill_antialias_get(ptr));
  set fillAntialias(PropertyValue<bool> value) => mbgl_style_fill_layer_fill_antialias_set(ptr, value.ptr);

  /// The opacity of the entire fill layer. In contrast to the `fill-color`, this value will also affect the 1px stroke around the fill, if the stroke is used.
  PropertyValue<double> get fillOpacity => PropertyValue<double>.fromNative(mbgl_style_fill_layer_fill_opacity_get(ptr));
  set fillOpacity(PropertyValue<double> value) => mbgl_style_fill_layer_fill_opacity_set(ptr, value.ptr);

  /// The color of the filled part of this layer. This color can be specified as `rgba` with an alpha component and the color's opacity will not affect the opacity of the 1px stroke, if it is used.
  PropertyValue<ui.Color> get fillColor => PropertyValue<ui.Color>.fromNative(mbgl_style_fill_layer_fill_color_get(ptr));
  set fillColor(PropertyValue<ui.Color> value) => mbgl_style_fill_layer_fill_color_set(ptr, value.ptr);

  /// The outline color of the fill. Matches the value of `fill-color` if unspecified.
  PropertyValue<ui.Color> get fillOutlineColor => PropertyValue<ui.Color>.fromNative(mbgl_style_fill_layer_fill_outline_color_get(ptr));
  set fillOutlineColor(PropertyValue<ui.Color> value) => mbgl_style_fill_layer_fill_outline_color_set(ptr, value.ptr);

  /// The geometry's offset. Values are [x, y] where negatives indicate left and up, respectively.
  PropertyValue<(double, double)> get fillTranslate => PropertyValue<(double, double)>.fromNative(mbgl_style_fill_layer_fill_translate_get(ptr));
  set fillTranslate(PropertyValue<(double, double)> value) => mbgl_style_fill_layer_fill_translate_set(ptr, value.ptr);

  /// Controls the frame of reference for `fill-translate`.
  PropertyValue<FillTranslateAnchor> get fillTranslateAnchor => PropertyValue<FillTranslateAnchor>.fromNative(mbgl_style_fill_layer_fill_translate_anchor_get(ptr));
  set fillTranslateAnchor(PropertyValue<FillTranslateAnchor> value) => mbgl_style_fill_layer_fill_translate_anchor_set(ptr, value.ptr);

  /// Name of image in sprite to use for drawing image fills. For seamless patterns, image width and height must be a factor of two (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be evaluated only at integer zoom levels.
  PropertyValue<ResolvedImage> get fillPattern => PropertyValue<ResolvedImage>.fromNative(mbgl_style_fill_layer_fill_pattern_get(ptr));
  set fillPattern(PropertyValue<ResolvedImage> value) => mbgl_style_fill_layer_fill_pattern_set(ptr, value.ptr);
}

class LineLayer extends Layer {
  LineLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  LineLayer({
    required String id,
    required String sourceId,
    PropertyValue<LineCap>? lineCap,
    PropertyValue<LineJoin>? lineJoin,
    PropertyValue<double>? lineMiterLimit,
    PropertyValue<double>? lineRoundLimit,
    PropertyValue<double>? lineSortKey,
    Visibility? visibility,
    PropertyValue<double>? lineOpacity,
    PropertyValue<ui.Color>? lineColor,
    PropertyValue<(double, double)>? lineTranslate,
    PropertyValue<LineTranslateAnchor>? lineTranslateAnchor,
    PropertyValue<double>? lineWidth,
    PropertyValue<double>? lineGapWidth,
    PropertyValue<double>? lineOffset,
    PropertyValue<double>? lineBlur,
    PropertyValue<List<double>>? lineDasharray,
    PropertyValue<ResolvedImage>? linePattern,
    PropertyValue<ui.Color>? lineGradient,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_line_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (lineCap != null) this.lineCap = lineCap;
    if (lineJoin != null) this.lineJoin = lineJoin;
    if (lineMiterLimit != null) this.lineMiterLimit = lineMiterLimit;
    if (lineRoundLimit != null) this.lineRoundLimit = lineRoundLimit;
    if (lineSortKey != null) this.lineSortKey = lineSortKey;
    if (visibility != null) this.visibility = visibility;
    if (lineOpacity != null) this.lineOpacity = lineOpacity;
    if (lineColor != null) this.lineColor = lineColor;
    if (lineTranslate != null) this.lineTranslate = lineTranslate;
    if (lineTranslateAnchor != null) this.lineTranslateAnchor = lineTranslateAnchor;
    if (lineWidth != null) this.lineWidth = lineWidth;
    if (lineGapWidth != null) this.lineGapWidth = lineGapWidth;
    if (lineOffset != null) this.lineOffset = lineOffset;
    if (lineBlur != null) this.lineBlur = lineBlur;
    if (lineDasharray != null) this.lineDasharray = lineDasharray;
    if (linePattern != null) this.linePattern = linePattern;
    if (lineGradient != null) this.lineGradient = lineGradient;
  }

  /// The display of line endings.
  PropertyValue<LineCap> get lineCap => PropertyValue<LineCap>.fromNative(mbgl_style_line_layer_line_cap_get(ptr));
  set lineCap(PropertyValue<LineCap> value) => mbgl_style_line_layer_line_cap_set(ptr, value.ptr);

  /// The display of lines when joining.
  PropertyValue<LineJoin> get lineJoin => PropertyValue<LineJoin>.fromNative(mbgl_style_line_layer_line_join_get(ptr));
  set lineJoin(PropertyValue<LineJoin> value) => mbgl_style_line_layer_line_join_set(ptr, value.ptr);

  /// Used to automatically convert miter joins to bevel joins for sharp angles.
  PropertyValue<double> get lineMiterLimit => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_miter_limit_get(ptr));
  set lineMiterLimit(PropertyValue<double> value) => mbgl_style_line_layer_line_miter_limit_set(ptr, value.ptr);

  /// Used to automatically convert round joins to miter joins for shallow angles.
  PropertyValue<double> get lineRoundLimit => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_round_limit_get(ptr));
  set lineRoundLimit(PropertyValue<double> value) => mbgl_style_line_layer_line_round_limit_set(ptr, value.ptr);

  /// Sorts features in ascending order based on this value. Features with a higher sort key will appear above features with a lower sort key.
  PropertyValue<double> get lineSortKey => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_sort_key_get(ptr));
  set lineSortKey(PropertyValue<double> value) => mbgl_style_line_layer_line_sort_key_set(ptr, value.ptr);

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_line_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_line_layer_visibility_set(ptr, value._toNative());

  /// The opacity at which the line will be drawn.
  PropertyValue<double> get lineOpacity => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_opacity_get(ptr));
  set lineOpacity(PropertyValue<double> value) => mbgl_style_line_layer_line_opacity_set(ptr, value.ptr);

  /// The color with which the line will be drawn.
  PropertyValue<ui.Color> get lineColor => PropertyValue<ui.Color>.fromNative(mbgl_style_line_layer_line_color_get(ptr));
  set lineColor(PropertyValue<ui.Color> value) => mbgl_style_line_layer_line_color_set(ptr, value.ptr);

  /// The geometry's offset. Values are [x, y] where negatives indicate left and up, respectively.
  PropertyValue<(double, double)> get lineTranslate => PropertyValue<(double, double)>.fromNative(mbgl_style_line_layer_line_translate_get(ptr));
  set lineTranslate(PropertyValue<(double, double)> value) => mbgl_style_line_layer_line_translate_set(ptr, value.ptr);

  /// Controls the frame of reference for `line-translate`.
  PropertyValue<LineTranslateAnchor> get lineTranslateAnchor => PropertyValue<LineTranslateAnchor>.fromNative(mbgl_style_line_layer_line_translate_anchor_get(ptr));
  set lineTranslateAnchor(PropertyValue<LineTranslateAnchor> value) => mbgl_style_line_layer_line_translate_anchor_set(ptr, value.ptr);

  /// Stroke thickness.
  PropertyValue<double> get lineWidth => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_width_get(ptr));
  set lineWidth(PropertyValue<double> value) => mbgl_style_line_layer_line_width_set(ptr, value.ptr);

  /// Draws a line casing outside of a line's actual path. Value indicates the width of the inner gap.
  PropertyValue<double> get lineGapWidth => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_gap_width_get(ptr));
  set lineGapWidth(PropertyValue<double> value) => mbgl_style_line_layer_line_gap_width_set(ptr, value.ptr);

  /// The line's offset. For linear features, a positive value offsets the line to the right, relative to the direction of the line, and a negative value to the left. For polygon features, a positive value results in an inset, and a negative value results in an outset.
  PropertyValue<double> get lineOffset => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_offset_get(ptr));
  set lineOffset(PropertyValue<double> value) => mbgl_style_line_layer_line_offset_set(ptr, value.ptr);

  /// Blur applied to the line, in pixels.
  PropertyValue<double> get lineBlur => PropertyValue<double>.fromNative(mbgl_style_line_layer_line_blur_get(ptr));
  set lineBlur(PropertyValue<double> value) => mbgl_style_line_layer_line_blur_set(ptr, value.ptr);

  /// Specifies the lengths of the alternating dashes and gaps that form the dash pattern. The lengths are later scaled by the line width. To convert a dash length to pixels, multiply the length by the current line width. Note that GeoJSON sources with `lineMetrics: true` specified won't render dashed lines to the expected scale. Also note that zoom-dependent expressions will be evaluated only at integer zoom levels.
  PropertyValue<List<double>> get lineDasharray => PropertyValue<List<double>>.fromNative(mbgl_style_line_layer_line_dasharray_get(ptr));
  set lineDasharray(PropertyValue<List<double>> value) => mbgl_style_line_layer_line_dasharray_set(ptr, value.ptr);

  /// Name of image in sprite to use for drawing image lines. For seamless patterns, image width must be a factor of two (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be evaluated only at integer zoom levels.
  PropertyValue<ResolvedImage> get linePattern => PropertyValue<ResolvedImage>.fromNative(mbgl_style_line_layer_line_pattern_get(ptr));
  set linePattern(PropertyValue<ResolvedImage> value) => mbgl_style_line_layer_line_pattern_set(ptr, value.ptr);

  /// Defines a gradient with which to color a line feature. Can only be used with GeoJSON sources that specify `"lineMetrics": true`.
  PropertyValue<ui.Color> get lineGradient => PropertyValue<ui.Color>.fromNative(mbgl_style_line_layer_line_gradient_get(ptr));
  set lineGradient(PropertyValue<ui.Color> value) => mbgl_style_line_layer_line_gradient_set(ptr, value.ptr);
}

class SymbolLayer extends Layer {
  SymbolLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  SymbolLayer({
    required String id,
    required String sourceId,
    PropertyValue<SymbolPlacement>? symbolPlacement,
    PropertyValue<double>? symbolSpacing,
    PropertyValue<bool>? symbolAvoidEdges,
    PropertyValue<double>? symbolSortKey,
    PropertyValue<SymbolZOrder>? symbolZOrder,
    PropertyValue<bool>? iconAllowOverlap,
    PropertyValue<bool>? iconIgnorePlacement,
    PropertyValue<bool>? iconOptional,
    PropertyValue<IconRotationAlignment>? iconRotationAlignment,
    PropertyValue<double>? iconSize,
    PropertyValue<IconTextFit>? iconTextFit,
    PropertyValue<(double, double, double, double)>? iconTextFitPadding,
    PropertyValue<ResolvedImage>? iconImage,
    PropertyValue<double>? iconRotate,
    PropertyValue<ui.EdgeInsets>? iconPadding,
    PropertyValue<bool>? iconKeepUpright,
    PropertyValue<(double, double)>? iconOffset,
    PropertyValue<IconAnchor>? iconAnchor,
    PropertyValue<IconPitchAlignment>? iconPitchAlignment,
    PropertyValue<TextPitchAlignment>? textPitchAlignment,
    PropertyValue<TextRotationAlignment>? textRotationAlignment,
    PropertyValue<Formatted>? textField,
    PropertyValue<List<String>>? textFont,
    PropertyValue<double>? textSize,
    PropertyValue<double>? textMaxWidth,
    PropertyValue<double>? textLineHeight,
    PropertyValue<double>? textLetterSpacing,
    PropertyValue<TextJustify>? textJustify,
    PropertyValue<double>? textRadialOffset,
    PropertyValue<List<TextVariableAnchor>>? textVariableAnchor,
    PropertyValue<VariableAnchorOffsetCollection>? textVariableAnchorOffset,
    PropertyValue<TextAnchor>? textAnchor,
    PropertyValue<double>? textMaxAngle,
    PropertyValue<List<TextWritingMode>>? textWritingMode,
    PropertyValue<double>? textRotate,
    PropertyValue<double>? textPadding,
    PropertyValue<bool>? textKeepUpright,
    PropertyValue<TextTransform>? textTransform,
    PropertyValue<(double, double)>? textOffset,
    PropertyValue<bool>? textAllowOverlap,
    PropertyValue<bool>? textIgnorePlacement,
    PropertyValue<bool>? textOptional,
    Visibility? visibility,
    PropertyValue<double>? iconOpacity,
    PropertyValue<ui.Color>? iconColor,
    PropertyValue<ui.Color>? iconHaloColor,
    PropertyValue<double>? iconHaloWidth,
    PropertyValue<double>? iconHaloBlur,
    PropertyValue<(double, double)>? iconTranslate,
    PropertyValue<IconTranslateAnchor>? iconTranslateAnchor,
    PropertyValue<double>? textOpacity,
    PropertyValue<ui.Color>? textColor,
    PropertyValue<ui.Color>? textHaloColor,
    PropertyValue<double>? textHaloWidth,
    PropertyValue<double>? textHaloBlur,
    PropertyValue<(double, double)>? textTranslate,
    PropertyValue<TextTranslateAnchor>? textTranslateAnchor,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_symbol_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (symbolPlacement != null) this.symbolPlacement = symbolPlacement;
    if (symbolSpacing != null) this.symbolSpacing = symbolSpacing;
    if (symbolAvoidEdges != null) this.symbolAvoidEdges = symbolAvoidEdges;
    if (symbolSortKey != null) this.symbolSortKey = symbolSortKey;
    if (symbolZOrder != null) this.symbolZOrder = symbolZOrder;
    if (iconAllowOverlap != null) this.iconAllowOverlap = iconAllowOverlap;
    if (iconIgnorePlacement != null) this.iconIgnorePlacement = iconIgnorePlacement;
    if (iconOptional != null) this.iconOptional = iconOptional;
    if (iconRotationAlignment != null) this.iconRotationAlignment = iconRotationAlignment;
    if (iconSize != null) this.iconSize = iconSize;
    if (iconTextFit != null) this.iconTextFit = iconTextFit;
    if (iconTextFitPadding != null) this.iconTextFitPadding = iconTextFitPadding;
    if (iconImage != null) this.iconImage = iconImage;
    if (iconRotate != null) this.iconRotate = iconRotate;
    if (iconPadding != null) this.iconPadding = iconPadding;
    if (iconKeepUpright != null) this.iconKeepUpright = iconKeepUpright;
    if (iconOffset != null) this.iconOffset = iconOffset;
    if (iconAnchor != null) this.iconAnchor = iconAnchor;
    if (iconPitchAlignment != null) this.iconPitchAlignment = iconPitchAlignment;
    if (textPitchAlignment != null) this.textPitchAlignment = textPitchAlignment;
    if (textRotationAlignment != null) this.textRotationAlignment = textRotationAlignment;
    if (textField != null) this.textField = textField;
    if (textFont != null) this.textFont = textFont;
    if (textSize != null) this.textSize = textSize;
    if (textMaxWidth != null) this.textMaxWidth = textMaxWidth;
    if (textLineHeight != null) this.textLineHeight = textLineHeight;
    if (textLetterSpacing != null) this.textLetterSpacing = textLetterSpacing;
    if (textJustify != null) this.textJustify = textJustify;
    if (textRadialOffset != null) this.textRadialOffset = textRadialOffset;
    if (textVariableAnchor != null) this.textVariableAnchor = textVariableAnchor;
    if (textVariableAnchorOffset != null) this.textVariableAnchorOffset = textVariableAnchorOffset;
    if (textAnchor != null) this.textAnchor = textAnchor;
    if (textMaxAngle != null) this.textMaxAngle = textMaxAngle;
    if (textWritingMode != null) this.textWritingMode = textWritingMode;
    if (textRotate != null) this.textRotate = textRotate;
    if (textPadding != null) this.textPadding = textPadding;
    if (textKeepUpright != null) this.textKeepUpright = textKeepUpright;
    if (textTransform != null) this.textTransform = textTransform;
    if (textOffset != null) this.textOffset = textOffset;
    if (textAllowOverlap != null) this.textAllowOverlap = textAllowOverlap;
    if (textIgnorePlacement != null) this.textIgnorePlacement = textIgnorePlacement;
    if (textOptional != null) this.textOptional = textOptional;
    if (visibility != null) this.visibility = visibility;
    if (iconOpacity != null) this.iconOpacity = iconOpacity;
    if (iconColor != null) this.iconColor = iconColor;
    if (iconHaloColor != null) this.iconHaloColor = iconHaloColor;
    if (iconHaloWidth != null) this.iconHaloWidth = iconHaloWidth;
    if (iconHaloBlur != null) this.iconHaloBlur = iconHaloBlur;
    if (iconTranslate != null) this.iconTranslate = iconTranslate;
    if (iconTranslateAnchor != null) this.iconTranslateAnchor = iconTranslateAnchor;
    if (textOpacity != null) this.textOpacity = textOpacity;
    if (textColor != null) this.textColor = textColor;
    if (textHaloColor != null) this.textHaloColor = textHaloColor;
    if (textHaloWidth != null) this.textHaloWidth = textHaloWidth;
    if (textHaloBlur != null) this.textHaloBlur = textHaloBlur;
    if (textTranslate != null) this.textTranslate = textTranslate;
    if (textTranslateAnchor != null) this.textTranslateAnchor = textTranslateAnchor;
  }

  /// Label placement relative to its geometry.
  PropertyValue<SymbolPlacement> get symbolPlacement => PropertyValue<SymbolPlacement>.fromNative(mbgl_style_symbol_layer_symbol_placement_get(ptr));
  set symbolPlacement(PropertyValue<SymbolPlacement> value) => mbgl_style_symbol_layer_symbol_placement_set(ptr, value.ptr);

  /// Distance between two symbol anchors.
  PropertyValue<double> get symbolSpacing => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_symbol_spacing_get(ptr));
  set symbolSpacing(PropertyValue<double> value) => mbgl_style_symbol_layer_symbol_spacing_set(ptr, value.ptr);

  /// If true, the symbols will not cross tile edges to avoid mutual collisions. Recommended in layers that don't have enough padding in the vector tile to prevent collisions, or if it is a point symbol layer placed after a line symbol layer. When using a client that supports global collision detection, like MapLibre GL JS version 0.42.0 or greater, enabling this property is not needed to prevent clipped labels at tile boundaries.
  PropertyValue<bool> get symbolAvoidEdges => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_symbol_avoid_edges_get(ptr));
  set symbolAvoidEdges(PropertyValue<bool> value) => mbgl_style_symbol_layer_symbol_avoid_edges_set(ptr, value.ptr);

  /// Sorts features in ascending order based on this value. Features with lower sort keys are drawn and placed first.  When `icon-allow-overlap` or `text-allow-overlap` is `false`, features with a lower sort key will have priority during placement. When `icon-allow-overlap` or `text-allow-overlap` is set to `true`, features with a higher sort key will overlap over features with a lower sort key.
  PropertyValue<double> get symbolSortKey => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_symbol_sort_key_get(ptr));
  set symbolSortKey(PropertyValue<double> value) => mbgl_style_symbol_layer_symbol_sort_key_set(ptr, value.ptr);

  /// Determines whether overlapping symbols in the same layer are rendered in the order that they appear in the data source or by their y-position relative to the viewport. To control the order and prioritization of symbols otherwise, use `symbol-sort-key`.
  PropertyValue<SymbolZOrder> get symbolZOrder => PropertyValue<SymbolZOrder>.fromNative(mbgl_style_symbol_layer_symbol_z_order_get(ptr));
  set symbolZOrder(PropertyValue<SymbolZOrder> value) => mbgl_style_symbol_layer_symbol_z_order_set(ptr, value.ptr);

  /// If true, the icon will be visible even if it collides with other previously drawn symbols.
  PropertyValue<bool> get iconAllowOverlap => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_icon_allow_overlap_get(ptr));
  set iconAllowOverlap(PropertyValue<bool> value) => mbgl_style_symbol_layer_icon_allow_overlap_set(ptr, value.ptr);

  /// If true, other symbols can be visible even if they collide with the icon.
  PropertyValue<bool> get iconIgnorePlacement => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_icon_ignore_placement_get(ptr));
  set iconIgnorePlacement(PropertyValue<bool> value) => mbgl_style_symbol_layer_icon_ignore_placement_set(ptr, value.ptr);

  /// If true, text will display without their corresponding icons when the icon collides with other symbols and the text does not.
  PropertyValue<bool> get iconOptional => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_icon_optional_get(ptr));
  set iconOptional(PropertyValue<bool> value) => mbgl_style_symbol_layer_icon_optional_set(ptr, value.ptr);

  /// In combination with `symbol-placement`, determines the rotation behavior of icons.
  PropertyValue<IconRotationAlignment> get iconRotationAlignment => PropertyValue<IconRotationAlignment>.fromNative(mbgl_style_symbol_layer_icon_rotation_alignment_get(ptr));
  set iconRotationAlignment(PropertyValue<IconRotationAlignment> value) => mbgl_style_symbol_layer_icon_rotation_alignment_set(ptr, value.ptr);

  /// Scales the original size of the icon by the provided factor. The new pixel size of the image will be the original pixel size multiplied by `icon-size`. 1 is the original size; 3 triples the size of the image.
  PropertyValue<double> get iconSize => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_icon_size_get(ptr));
  set iconSize(PropertyValue<double> value) => mbgl_style_symbol_layer_icon_size_set(ptr, value.ptr);

  /// Scales the icon to fit around the associated text.
  PropertyValue<IconTextFit> get iconTextFit => PropertyValue<IconTextFit>.fromNative(mbgl_style_symbol_layer_icon_text_fit_get(ptr));
  set iconTextFit(PropertyValue<IconTextFit> value) => mbgl_style_symbol_layer_icon_text_fit_set(ptr, value.ptr);

  /// Size of the additional area added to dimensions determined by `icon-text-fit`, in clockwise order: top, right, bottom, left.
  PropertyValue<(double, double, double, double)> get iconTextFitPadding => PropertyValue<(double, double, double, double)>.fromNative(mbgl_style_symbol_layer_icon_text_fit_padding_get(ptr));
  set iconTextFitPadding(PropertyValue<(double, double, double, double)> value) => mbgl_style_symbol_layer_icon_text_fit_padding_set(ptr, value.ptr);

  /// Name of image in sprite to use for drawing an image background.
  PropertyValue<ResolvedImage> get iconImage => PropertyValue<ResolvedImage>.fromNative(mbgl_style_symbol_layer_icon_image_get(ptr));
  set iconImage(PropertyValue<ResolvedImage> value) => mbgl_style_symbol_layer_icon_image_set(ptr, value.ptr);

  /// Rotates the icon clockwise.
  PropertyValue<double> get iconRotate => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_icon_rotate_get(ptr));
  set iconRotate(PropertyValue<double> value) => mbgl_style_symbol_layer_icon_rotate_set(ptr, value.ptr);

  /// Size of additional area round the icon bounding box used for detecting symbol collisions.
  PropertyValue<ui.EdgeInsets> get iconPadding => PropertyValue<ui.EdgeInsets>.fromNative(mbgl_style_symbol_layer_icon_padding_get(ptr));
  set iconPadding(PropertyValue<ui.EdgeInsets> value) => mbgl_style_symbol_layer_icon_padding_set(ptr, value.ptr);

  /// If true, the icon may be flipped to prevent it from being rendered upside-down.
  PropertyValue<bool> get iconKeepUpright => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_icon_keep_upright_get(ptr));
  set iconKeepUpright(PropertyValue<bool> value) => mbgl_style_symbol_layer_icon_keep_upright_set(ptr, value.ptr);

  /// Offset distance of icon from its anchor. Positive values indicate right and down, while negative values indicate left and up. Each component is multiplied by the value of `icon-size` to obtain the final offset in pixels. When combined with `icon-rotate` the offset will be as if the rotated direction was up.
  PropertyValue<(double, double)> get iconOffset => PropertyValue<(double, double)>.fromNative(mbgl_style_symbol_layer_icon_offset_get(ptr));
  set iconOffset(PropertyValue<(double, double)> value) => mbgl_style_symbol_layer_icon_offset_set(ptr, value.ptr);

  /// Part of the icon placed closest to the anchor.
  PropertyValue<IconAnchor> get iconAnchor => PropertyValue<IconAnchor>.fromNative(mbgl_style_symbol_layer_icon_anchor_get(ptr));
  set iconAnchor(PropertyValue<IconAnchor> value) => mbgl_style_symbol_layer_icon_anchor_set(ptr, value.ptr);

  /// Orientation of icon when map is pitched.
  PropertyValue<IconPitchAlignment> get iconPitchAlignment => PropertyValue<IconPitchAlignment>.fromNative(mbgl_style_symbol_layer_icon_pitch_alignment_get(ptr));
  set iconPitchAlignment(PropertyValue<IconPitchAlignment> value) => mbgl_style_symbol_layer_icon_pitch_alignment_set(ptr, value.ptr);

  /// Orientation of text when map is pitched.
  PropertyValue<TextPitchAlignment> get textPitchAlignment => PropertyValue<TextPitchAlignment>.fromNative(mbgl_style_symbol_layer_text_pitch_alignment_get(ptr));
  set textPitchAlignment(PropertyValue<TextPitchAlignment> value) => mbgl_style_symbol_layer_text_pitch_alignment_set(ptr, value.ptr);

  /// In combination with `symbol-placement`, determines the rotation behavior of the individual glyphs forming the text.
  PropertyValue<TextRotationAlignment> get textRotationAlignment => PropertyValue<TextRotationAlignment>.fromNative(mbgl_style_symbol_layer_text_rotation_alignment_get(ptr));
  set textRotationAlignment(PropertyValue<TextRotationAlignment> value) => mbgl_style_symbol_layer_text_rotation_alignment_set(ptr, value.ptr);

  /// Value to use for a text label. If a plain `string` is provided, it will be treated as a `formatted` with default/inherited formatting options.
  PropertyValue<Formatted> get textField => PropertyValue<Formatted>.fromNative(mbgl_style_symbol_layer_text_field_get(ptr));
  set textField(PropertyValue<Formatted> value) => mbgl_style_symbol_layer_text_field_set(ptr, value.ptr);

  /// Font stack to use for displaying text.
  PropertyValue<List<String>> get textFont => PropertyValue<List<String>>.fromNative(mbgl_style_symbol_layer_text_font_get(ptr));
  set textFont(PropertyValue<List<String>> value) => mbgl_style_symbol_layer_text_font_set(ptr, value.ptr);

  /// Font size.
  PropertyValue<double> get textSize => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_size_get(ptr));
  set textSize(PropertyValue<double> value) => mbgl_style_symbol_layer_text_size_set(ptr, value.ptr);

  /// The maximum line width for text wrapping.
  PropertyValue<double> get textMaxWidth => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_max_width_get(ptr));
  set textMaxWidth(PropertyValue<double> value) => mbgl_style_symbol_layer_text_max_width_set(ptr, value.ptr);

  /// Text leading value for multi-line text.
  PropertyValue<double> get textLineHeight => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_line_height_get(ptr));
  set textLineHeight(PropertyValue<double> value) => mbgl_style_symbol_layer_text_line_height_set(ptr, value.ptr);

  /// Text tracking amount.
  PropertyValue<double> get textLetterSpacing => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_letter_spacing_get(ptr));
  set textLetterSpacing(PropertyValue<double> value) => mbgl_style_symbol_layer_text_letter_spacing_set(ptr, value.ptr);

  /// Text justification options.
  PropertyValue<TextJustify> get textJustify => PropertyValue<TextJustify>.fromNative(mbgl_style_symbol_layer_text_justify_get(ptr));
  set textJustify(PropertyValue<TextJustify> value) => mbgl_style_symbol_layer_text_justify_set(ptr, value.ptr);

  /// Radial offset of text, in the direction of the symbol's anchor. Useful in combination with `text-variable-anchor`, which defaults to using the two-dimensional `text-offset` if present.
  PropertyValue<double> get textRadialOffset => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_radial_offset_get(ptr));
  set textRadialOffset(PropertyValue<double> value) => mbgl_style_symbol_layer_text_radial_offset_set(ptr, value.ptr);

  /// To increase the chance of placing high-priority labels on the map, you can provide an array of `text-anchor` locations: the renderer will attempt to place the label at each location, in order, before moving onto the next label. Use `text-justify: auto` to choose justification based on anchor position. To apply an offset, use the `text-radial-offset` or the two-dimensional `text-offset`.
  PropertyValue<List<TextVariableAnchor>> get textVariableAnchor => PropertyValue<List<TextVariableAnchor>>.fromNative(mbgl_style_symbol_layer_text_variable_anchor_get(ptr));
  set textVariableAnchor(PropertyValue<List<TextVariableAnchor>> value) => mbgl_style_symbol_layer_text_variable_anchor_set(ptr, value.ptr);

  /// To increase the chance of placing high-priority labels on the map, you can provide an array of `text-anchor` locations, each paired with an offset value. The renderer will attempt to place the label at each location, in order, before moving on to the next location+offset. Use `text-justify: auto` to choose justification based on anchor position.
  /// 
  /// The length of the array must be even, and must alternate between enum and point entries. i.e., each anchor location must be accompanied by a point, and that point defines the offset when the corresponding anchor location is used. Positive offset values indicate right and down, while negative values indicate left and up. Anchor locations may repeat, allowing the renderer to try multiple offsets to try and place a label using the same anchor.
  /// 
  /// When present, this property takes precedence over `text-anchor`, `text-variable-anchor`, `text-offset`, and `text-radial-offset`.
  /// 
  /// ```json
  /// 
  /// { "text-variable-anchor-offset": ["top", [0, 4], "left", [3,0], "bottom", [1, 1]] }
  /// 
  /// ```
  /// 
  /// When the renderer chooses the `top` anchor, `[0, 4]` will be used for `text-offset`; the text will be shifted down by 4 ems.
  /// 
  /// When the renderer chooses the `left` anchor, `[3, 0]` will be used for `text-offset`; the text will be shifted right by 3 ems.
  PropertyValue<VariableAnchorOffsetCollection> get textVariableAnchorOffset => PropertyValue<VariableAnchorOffsetCollection>.fromNative(mbgl_style_symbol_layer_text_variable_anchor_offset_get(ptr));
  set textVariableAnchorOffset(PropertyValue<VariableAnchorOffsetCollection> value) => mbgl_style_symbol_layer_text_variable_anchor_offset_set(ptr, value.ptr);

  /// Part of the text placed closest to the anchor.
  PropertyValue<TextAnchor> get textAnchor => PropertyValue<TextAnchor>.fromNative(mbgl_style_symbol_layer_text_anchor_get(ptr));
  set textAnchor(PropertyValue<TextAnchor> value) => mbgl_style_symbol_layer_text_anchor_set(ptr, value.ptr);

  /// Maximum angle change between adjacent characters.
  PropertyValue<double> get textMaxAngle => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_max_angle_get(ptr));
  set textMaxAngle(PropertyValue<double> value) => mbgl_style_symbol_layer_text_max_angle_set(ptr, value.ptr);

  /// The property allows control over a symbol's orientation. Note that the property values act as a hint, so that a symbol whose language doesn’t support the provided orientation will be laid out in its natural orientation. Example: English point symbol will be rendered horizontally even if array value contains single 'vertical' enum value. The order of elements in an array define priority order for the placement of an orientation variant.
  PropertyValue<List<TextWritingMode>> get textWritingMode => PropertyValue<List<TextWritingMode>>.fromNative(mbgl_style_symbol_layer_text_writing_mode_get(ptr));
  set textWritingMode(PropertyValue<List<TextWritingMode>> value) => mbgl_style_symbol_layer_text_writing_mode_set(ptr, value.ptr);

  /// Rotates the text clockwise.
  PropertyValue<double> get textRotate => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_rotate_get(ptr));
  set textRotate(PropertyValue<double> value) => mbgl_style_symbol_layer_text_rotate_set(ptr, value.ptr);

  /// Size of the additional area around the text bounding box used for detecting symbol collisions.
  PropertyValue<double> get textPadding => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_padding_get(ptr));
  set textPadding(PropertyValue<double> value) => mbgl_style_symbol_layer_text_padding_set(ptr, value.ptr);

  /// If true, the text may be flipped vertically to prevent it from being rendered upside-down.
  PropertyValue<bool> get textKeepUpright => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_text_keep_upright_get(ptr));
  set textKeepUpright(PropertyValue<bool> value) => mbgl_style_symbol_layer_text_keep_upright_set(ptr, value.ptr);

  /// Specifies how to capitalize text, similar to the CSS `text-transform` property.
  PropertyValue<TextTransform> get textTransform => PropertyValue<TextTransform>.fromNative(mbgl_style_symbol_layer_text_transform_get(ptr));
  set textTransform(PropertyValue<TextTransform> value) => mbgl_style_symbol_layer_text_transform_set(ptr, value.ptr);

  /// Offset distance of text from its anchor. Positive values indicate right and down, while negative values indicate left and up. If used with text-variable-anchor, input values will be taken as absolute values. Offsets along the x- and y-axis will be applied automatically based on the anchor position.
  PropertyValue<(double, double)> get textOffset => PropertyValue<(double, double)>.fromNative(mbgl_style_symbol_layer_text_offset_get(ptr));
  set textOffset(PropertyValue<(double, double)> value) => mbgl_style_symbol_layer_text_offset_set(ptr, value.ptr);

  /// If true, the text will be visible even if it collides with other previously drawn symbols.
  PropertyValue<bool> get textAllowOverlap => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_text_allow_overlap_get(ptr));
  set textAllowOverlap(PropertyValue<bool> value) => mbgl_style_symbol_layer_text_allow_overlap_set(ptr, value.ptr);

  /// If true, other symbols can be visible even if they collide with the text.
  PropertyValue<bool> get textIgnorePlacement => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_text_ignore_placement_get(ptr));
  set textIgnorePlacement(PropertyValue<bool> value) => mbgl_style_symbol_layer_text_ignore_placement_set(ptr, value.ptr);

  /// If true, icons will display without their corresponding text when the text collides with other symbols and the icon does not.
  PropertyValue<bool> get textOptional => PropertyValue<bool>.fromNative(mbgl_style_symbol_layer_text_optional_get(ptr));
  set textOptional(PropertyValue<bool> value) => mbgl_style_symbol_layer_text_optional_set(ptr, value.ptr);

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_symbol_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_symbol_layer_visibility_set(ptr, value._toNative());

  /// The opacity at which the icon will be drawn.
  PropertyValue<double> get iconOpacity => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_icon_opacity_get(ptr));
  set iconOpacity(PropertyValue<double> value) => mbgl_style_symbol_layer_icon_opacity_set(ptr, value.ptr);

  /// The color of the icon. This can only be used with SDF icons.
  PropertyValue<ui.Color> get iconColor => PropertyValue<ui.Color>.fromNative(mbgl_style_symbol_layer_icon_color_get(ptr));
  set iconColor(PropertyValue<ui.Color> value) => mbgl_style_symbol_layer_icon_color_set(ptr, value.ptr);

  /// The color of the icon's halo. Icon halos can only be used with SDF icons.
  PropertyValue<ui.Color> get iconHaloColor => PropertyValue<ui.Color>.fromNative(mbgl_style_symbol_layer_icon_halo_color_get(ptr));
  set iconHaloColor(PropertyValue<ui.Color> value) => mbgl_style_symbol_layer_icon_halo_color_set(ptr, value.ptr);

  /// Distance of halo to the icon outline.
  /// 
  /// The unit is in pixels only for SDF sprites that were created with a blur radius of 8, multiplied by the display density. I.e., the radius needs to be 16 for `@2x` sprites, etc.
  PropertyValue<double> get iconHaloWidth => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_icon_halo_width_get(ptr));
  set iconHaloWidth(PropertyValue<double> value) => mbgl_style_symbol_layer_icon_halo_width_set(ptr, value.ptr);

  /// Fade out the halo towards the outside.
  PropertyValue<double> get iconHaloBlur => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_icon_halo_blur_get(ptr));
  set iconHaloBlur(PropertyValue<double> value) => mbgl_style_symbol_layer_icon_halo_blur_set(ptr, value.ptr);

  /// Distance that the icon's anchor is moved from its original placement. Positive values indicate right and down, while negative values indicate left and up.
  PropertyValue<(double, double)> get iconTranslate => PropertyValue<(double, double)>.fromNative(mbgl_style_symbol_layer_icon_translate_get(ptr));
  set iconTranslate(PropertyValue<(double, double)> value) => mbgl_style_symbol_layer_icon_translate_set(ptr, value.ptr);

  /// Controls the frame of reference for `icon-translate`.
  PropertyValue<IconTranslateAnchor> get iconTranslateAnchor => PropertyValue<IconTranslateAnchor>.fromNative(mbgl_style_symbol_layer_icon_translate_anchor_get(ptr));
  set iconTranslateAnchor(PropertyValue<IconTranslateAnchor> value) => mbgl_style_symbol_layer_icon_translate_anchor_set(ptr, value.ptr);

  /// The opacity at which the text will be drawn.
  PropertyValue<double> get textOpacity => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_opacity_get(ptr));
  set textOpacity(PropertyValue<double> value) => mbgl_style_symbol_layer_text_opacity_set(ptr, value.ptr);

  /// The color with which the text will be drawn.
  PropertyValue<ui.Color> get textColor => PropertyValue<ui.Color>.fromNative(mbgl_style_symbol_layer_text_color_get(ptr));
  set textColor(PropertyValue<ui.Color> value) => mbgl_style_symbol_layer_text_color_set(ptr, value.ptr);

  /// The color of the text's halo, which helps it stand out from backgrounds.
  PropertyValue<ui.Color> get textHaloColor => PropertyValue<ui.Color>.fromNative(mbgl_style_symbol_layer_text_halo_color_get(ptr));
  set textHaloColor(PropertyValue<ui.Color> value) => mbgl_style_symbol_layer_text_halo_color_set(ptr, value.ptr);

  /// Distance of halo to the font outline. Max text halo width is 1/4 of the font-size.
  PropertyValue<double> get textHaloWidth => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_halo_width_get(ptr));
  set textHaloWidth(PropertyValue<double> value) => mbgl_style_symbol_layer_text_halo_width_set(ptr, value.ptr);

  /// The halo's fadeout distance towards the outside.
  PropertyValue<double> get textHaloBlur => PropertyValue<double>.fromNative(mbgl_style_symbol_layer_text_halo_blur_get(ptr));
  set textHaloBlur(PropertyValue<double> value) => mbgl_style_symbol_layer_text_halo_blur_set(ptr, value.ptr);

  /// Distance that the text's anchor is moved from its original placement. Positive values indicate right and down, while negative values indicate left and up.
  PropertyValue<(double, double)> get textTranslate => PropertyValue<(double, double)>.fromNative(mbgl_style_symbol_layer_text_translate_get(ptr));
  set textTranslate(PropertyValue<(double, double)> value) => mbgl_style_symbol_layer_text_translate_set(ptr, value.ptr);

  /// Controls the frame of reference for `text-translate`.
  PropertyValue<TextTranslateAnchor> get textTranslateAnchor => PropertyValue<TextTranslateAnchor>.fromNative(mbgl_style_symbol_layer_text_translate_anchor_get(ptr));
  set textTranslateAnchor(PropertyValue<TextTranslateAnchor> value) => mbgl_style_symbol_layer_text_translate_anchor_set(ptr, value.ptr);
}

class CircleLayer extends Layer {
  CircleLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  CircleLayer({
    required String id,
    required String sourceId,
    PropertyValue<double>? circleSortKey,
    Visibility? visibility,
    PropertyValue<double>? circleRadius,
    PropertyValue<ui.Color>? circleColor,
    PropertyValue<double>? circleBlur,
    PropertyValue<double>? circleOpacity,
    PropertyValue<(double, double)>? circleTranslate,
    PropertyValue<CircleTranslateAnchor>? circleTranslateAnchor,
    PropertyValue<CirclePitchScale>? circlePitchScale,
    PropertyValue<CirclePitchAlignment>? circlePitchAlignment,
    PropertyValue<double>? circleStrokeWidth,
    PropertyValue<ui.Color>? circleStrokeColor,
    PropertyValue<double>? circleStrokeOpacity,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_circle_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (circleSortKey != null) this.circleSortKey = circleSortKey;
    if (visibility != null) this.visibility = visibility;
    if (circleRadius != null) this.circleRadius = circleRadius;
    if (circleColor != null) this.circleColor = circleColor;
    if (circleBlur != null) this.circleBlur = circleBlur;
    if (circleOpacity != null) this.circleOpacity = circleOpacity;
    if (circleTranslate != null) this.circleTranslate = circleTranslate;
    if (circleTranslateAnchor != null) this.circleTranslateAnchor = circleTranslateAnchor;
    if (circlePitchScale != null) this.circlePitchScale = circlePitchScale;
    if (circlePitchAlignment != null) this.circlePitchAlignment = circlePitchAlignment;
    if (circleStrokeWidth != null) this.circleStrokeWidth = circleStrokeWidth;
    if (circleStrokeColor != null) this.circleStrokeColor = circleStrokeColor;
    if (circleStrokeOpacity != null) this.circleStrokeOpacity = circleStrokeOpacity;
  }

  /// Sorts features in ascending order based on this value. Features with a higher sort key will appear above features with a lower sort key.
  PropertyValue<double> get circleSortKey => PropertyValue<double>.fromNative(mbgl_style_circle_layer_circle_sort_key_get(ptr));
  set circleSortKey(PropertyValue<double> value) => mbgl_style_circle_layer_circle_sort_key_set(ptr, value.ptr);

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_circle_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_circle_layer_visibility_set(ptr, value._toNative());

  /// Circle radius.
  PropertyValue<double> get circleRadius => PropertyValue<double>.fromNative(mbgl_style_circle_layer_circle_radius_get(ptr));
  set circleRadius(PropertyValue<double> value) => mbgl_style_circle_layer_circle_radius_set(ptr, value.ptr);

  /// The fill color of the circle.
  PropertyValue<ui.Color> get circleColor => PropertyValue<ui.Color>.fromNative(mbgl_style_circle_layer_circle_color_get(ptr));
  set circleColor(PropertyValue<ui.Color> value) => mbgl_style_circle_layer_circle_color_set(ptr, value.ptr);

  /// Amount to blur the circle. 1 blurs the circle such that only the centerpoint is full opacity.
  PropertyValue<double> get circleBlur => PropertyValue<double>.fromNative(mbgl_style_circle_layer_circle_blur_get(ptr));
  set circleBlur(PropertyValue<double> value) => mbgl_style_circle_layer_circle_blur_set(ptr, value.ptr);

  /// The opacity at which the circle will be drawn.
  PropertyValue<double> get circleOpacity => PropertyValue<double>.fromNative(mbgl_style_circle_layer_circle_opacity_get(ptr));
  set circleOpacity(PropertyValue<double> value) => mbgl_style_circle_layer_circle_opacity_set(ptr, value.ptr);

  /// The geometry's offset. Values are [x, y] where negatives indicate left and up, respectively.
  PropertyValue<(double, double)> get circleTranslate => PropertyValue<(double, double)>.fromNative(mbgl_style_circle_layer_circle_translate_get(ptr));
  set circleTranslate(PropertyValue<(double, double)> value) => mbgl_style_circle_layer_circle_translate_set(ptr, value.ptr);

  /// Controls the frame of reference for `circle-translate`.
  PropertyValue<CircleTranslateAnchor> get circleTranslateAnchor => PropertyValue<CircleTranslateAnchor>.fromNative(mbgl_style_circle_layer_circle_translate_anchor_get(ptr));
  set circleTranslateAnchor(PropertyValue<CircleTranslateAnchor> value) => mbgl_style_circle_layer_circle_translate_anchor_set(ptr, value.ptr);

  /// Controls the scaling behavior of the circle when the map is pitched.
  PropertyValue<CirclePitchScale> get circlePitchScale => PropertyValue<CirclePitchScale>.fromNative(mbgl_style_circle_layer_circle_pitch_scale_get(ptr));
  set circlePitchScale(PropertyValue<CirclePitchScale> value) => mbgl_style_circle_layer_circle_pitch_scale_set(ptr, value.ptr);

  /// Orientation of circle when map is pitched.
  PropertyValue<CirclePitchAlignment> get circlePitchAlignment => PropertyValue<CirclePitchAlignment>.fromNative(mbgl_style_circle_layer_circle_pitch_alignment_get(ptr));
  set circlePitchAlignment(PropertyValue<CirclePitchAlignment> value) => mbgl_style_circle_layer_circle_pitch_alignment_set(ptr, value.ptr);

  /// The width of the circle's stroke. Strokes are placed outside of the `circle-radius`.
  PropertyValue<double> get circleStrokeWidth => PropertyValue<double>.fromNative(mbgl_style_circle_layer_circle_stroke_width_get(ptr));
  set circleStrokeWidth(PropertyValue<double> value) => mbgl_style_circle_layer_circle_stroke_width_set(ptr, value.ptr);

  /// The stroke color of the circle.
  PropertyValue<ui.Color> get circleStrokeColor => PropertyValue<ui.Color>.fromNative(mbgl_style_circle_layer_circle_stroke_color_get(ptr));
  set circleStrokeColor(PropertyValue<ui.Color> value) => mbgl_style_circle_layer_circle_stroke_color_set(ptr, value.ptr);

  /// The opacity of the circle's stroke.
  PropertyValue<double> get circleStrokeOpacity => PropertyValue<double>.fromNative(mbgl_style_circle_layer_circle_stroke_opacity_get(ptr));
  set circleStrokeOpacity(PropertyValue<double> value) => mbgl_style_circle_layer_circle_stroke_opacity_set(ptr, value.ptr);
}

class HeatmapLayer extends Layer {
  HeatmapLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  HeatmapLayer({
    required String id,
    required String sourceId,
    Visibility? visibility,
    PropertyValue<double>? heatmapRadius,
    PropertyValue<double>? heatmapWeight,
    PropertyValue<double>? heatmapIntensity,
    PropertyValue<ui.Color>? heatmapColor,
    PropertyValue<double>? heatmapOpacity,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_heatmap_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (visibility != null) this.visibility = visibility;
    if (heatmapRadius != null) this.heatmapRadius = heatmapRadius;
    if (heatmapWeight != null) this.heatmapWeight = heatmapWeight;
    if (heatmapIntensity != null) this.heatmapIntensity = heatmapIntensity;
    if (heatmapColor != null) this.heatmapColor = heatmapColor;
    if (heatmapOpacity != null) this.heatmapOpacity = heatmapOpacity;
  }

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_heatmap_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_heatmap_layer_visibility_set(ptr, value._toNative());

  /// Radius of influence of one heatmap point in pixels. Increasing the value makes the heatmap smoother, but less detailed.
  PropertyValue<double> get heatmapRadius => PropertyValue<double>.fromNative(mbgl_style_heatmap_layer_heatmap_radius_get(ptr));
  set heatmapRadius(PropertyValue<double> value) => mbgl_style_heatmap_layer_heatmap_radius_set(ptr, value.ptr);

  /// A measure of how much an individual point contributes to the heatmap. A value of 10 would be equivalent to having 10 points of weight 1 in the same spot. Especially useful when combined with clustering.
  PropertyValue<double> get heatmapWeight => PropertyValue<double>.fromNative(mbgl_style_heatmap_layer_heatmap_weight_get(ptr));
  set heatmapWeight(PropertyValue<double> value) => mbgl_style_heatmap_layer_heatmap_weight_set(ptr, value.ptr);

  /// Similar to `heatmap-weight` but controls the intensity of the heatmap globally. Primarily used for adjusting the heatmap based on zoom level.
  PropertyValue<double> get heatmapIntensity => PropertyValue<double>.fromNative(mbgl_style_heatmap_layer_heatmap_intensity_get(ptr));
  set heatmapIntensity(PropertyValue<double> value) => mbgl_style_heatmap_layer_heatmap_intensity_set(ptr, value.ptr);

  /// Defines the color of each pixel based on its density value in a heatmap.  Should be an expression that uses `["heatmap-density"]` as input.
  PropertyValue<ui.Color> get heatmapColor => PropertyValue<ui.Color>.fromNative(mbgl_style_heatmap_layer_heatmap_color_get(ptr));
  set heatmapColor(PropertyValue<ui.Color> value) => mbgl_style_heatmap_layer_heatmap_color_set(ptr, value.ptr);

  /// The global opacity at which the heatmap layer will be drawn.
  PropertyValue<double> get heatmapOpacity => PropertyValue<double>.fromNative(mbgl_style_heatmap_layer_heatmap_opacity_get(ptr));
  set heatmapOpacity(PropertyValue<double> value) => mbgl_style_heatmap_layer_heatmap_opacity_set(ptr, value.ptr);
}

class FillExtrusionLayer extends Layer {
  FillExtrusionLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  FillExtrusionLayer({
    required String id,
    required String sourceId,
    Visibility? visibility,
    PropertyValue<double>? fillExtrusionOpacity,
    PropertyValue<ui.Color>? fillExtrusionColor,
    PropertyValue<(double, double)>? fillExtrusionTranslate,
    PropertyValue<FillExtrusionTranslateAnchor>? fillExtrusionTranslateAnchor,
    PropertyValue<ResolvedImage>? fillExtrusionPattern,
    PropertyValue<double>? fillExtrusionHeight,
    PropertyValue<double>? fillExtrusionBase,
    PropertyValue<bool>? fillExtrusionVerticalGradient,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_fill_extrusion_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (visibility != null) this.visibility = visibility;
    if (fillExtrusionOpacity != null) this.fillExtrusionOpacity = fillExtrusionOpacity;
    if (fillExtrusionColor != null) this.fillExtrusionColor = fillExtrusionColor;
    if (fillExtrusionTranslate != null) this.fillExtrusionTranslate = fillExtrusionTranslate;
    if (fillExtrusionTranslateAnchor != null) this.fillExtrusionTranslateAnchor = fillExtrusionTranslateAnchor;
    if (fillExtrusionPattern != null) this.fillExtrusionPattern = fillExtrusionPattern;
    if (fillExtrusionHeight != null) this.fillExtrusionHeight = fillExtrusionHeight;
    if (fillExtrusionBase != null) this.fillExtrusionBase = fillExtrusionBase;
    if (fillExtrusionVerticalGradient != null) this.fillExtrusionVerticalGradient = fillExtrusionVerticalGradient;
  }

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_fill_extrusion_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_fill_extrusion_layer_visibility_set(ptr, value._toNative());

  /// The opacity of the entire fill extrusion layer. This is rendered on a per-layer, not per-feature, basis, and data-driven styling is not available.
  PropertyValue<double> get fillExtrusionOpacity => PropertyValue<double>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_opacity_get(ptr));
  set fillExtrusionOpacity(PropertyValue<double> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_opacity_set(ptr, value.ptr);

  /// The base color of the extruded fill. The extrusion's surfaces will be shaded differently based on this color in combination with the root `light` settings. If this color is specified as `rgba` with an alpha component, the alpha component will be ignored; use `fill-extrusion-opacity` to set layer opacity.
  PropertyValue<ui.Color> get fillExtrusionColor => PropertyValue<ui.Color>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_color_get(ptr));
  set fillExtrusionColor(PropertyValue<ui.Color> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_color_set(ptr, value.ptr);

  /// The geometry's offset. Values are [x, y] where negatives indicate left and up (on the flat plane), respectively.
  PropertyValue<(double, double)> get fillExtrusionTranslate => PropertyValue<(double, double)>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_translate_get(ptr));
  set fillExtrusionTranslate(PropertyValue<(double, double)> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_translate_set(ptr, value.ptr);

  /// Controls the frame of reference for `fill-extrusion-translate`.
  PropertyValue<FillExtrusionTranslateAnchor> get fillExtrusionTranslateAnchor => PropertyValue<FillExtrusionTranslateAnchor>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_translate_anchor_get(ptr));
  set fillExtrusionTranslateAnchor(PropertyValue<FillExtrusionTranslateAnchor> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_translate_anchor_set(ptr, value.ptr);

  /// Name of image in sprite to use for drawing images on extruded fills. For seamless patterns, image width and height must be a factor of two (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be evaluated only at integer zoom levels.
  PropertyValue<ResolvedImage> get fillExtrusionPattern => PropertyValue<ResolvedImage>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_pattern_get(ptr));
  set fillExtrusionPattern(PropertyValue<ResolvedImage> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_pattern_set(ptr, value.ptr);

  /// The height with which to extrude this layer.
  PropertyValue<double> get fillExtrusionHeight => PropertyValue<double>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_height_get(ptr));
  set fillExtrusionHeight(PropertyValue<double> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_height_set(ptr, value.ptr);

  /// The height with which to extrude the base of this layer. Must be less than or equal to `fill-extrusion-height`.
  PropertyValue<double> get fillExtrusionBase => PropertyValue<double>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_base_get(ptr));
  set fillExtrusionBase(PropertyValue<double> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_base_set(ptr, value.ptr);

  /// Whether to apply a vertical gradient to the sides of a fill-extrusion layer. If true, sides will be shaded slightly darker farther down.
  PropertyValue<bool> get fillExtrusionVerticalGradient => PropertyValue<bool>.fromNative(mbgl_style_fill_extrusion_layer_fill_extrusion_vertical_gradient_get(ptr));
  set fillExtrusionVerticalGradient(PropertyValue<bool> value) => mbgl_style_fill_extrusion_layer_fill_extrusion_vertical_gradient_set(ptr, value.ptr);
}

class RasterLayer extends Layer {
  RasterLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  RasterLayer({
    required String id,
    required String sourceId,
    Visibility? visibility,
    PropertyValue<double>? rasterOpacity,
    PropertyValue<double>? rasterHueRotate,
    PropertyValue<double>? rasterBrightnessMin,
    PropertyValue<double>? rasterBrightnessMax,
    PropertyValue<double>? rasterSaturation,
    PropertyValue<double>? rasterContrast,
    PropertyValue<RasterResampling>? rasterResampling,
    PropertyValue<double>? rasterFadeDuration,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_raster_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (visibility != null) this.visibility = visibility;
    if (rasterOpacity != null) this.rasterOpacity = rasterOpacity;
    if (rasterHueRotate != null) this.rasterHueRotate = rasterHueRotate;
    if (rasterBrightnessMin != null) this.rasterBrightnessMin = rasterBrightnessMin;
    if (rasterBrightnessMax != null) this.rasterBrightnessMax = rasterBrightnessMax;
    if (rasterSaturation != null) this.rasterSaturation = rasterSaturation;
    if (rasterContrast != null) this.rasterContrast = rasterContrast;
    if (rasterResampling != null) this.rasterResampling = rasterResampling;
    if (rasterFadeDuration != null) this.rasterFadeDuration = rasterFadeDuration;
  }

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_raster_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_raster_layer_visibility_set(ptr, value._toNative());

  /// The opacity at which the image will be drawn.
  PropertyValue<double> get rasterOpacity => PropertyValue<double>.fromNative(mbgl_style_raster_layer_raster_opacity_get(ptr));
  set rasterOpacity(PropertyValue<double> value) => mbgl_style_raster_layer_raster_opacity_set(ptr, value.ptr);

  /// Rotates hues around the color wheel.
  PropertyValue<double> get rasterHueRotate => PropertyValue<double>.fromNative(mbgl_style_raster_layer_raster_hue_rotate_get(ptr));
  set rasterHueRotate(PropertyValue<double> value) => mbgl_style_raster_layer_raster_hue_rotate_set(ptr, value.ptr);

  /// Increase or reduce the brightness of the image. The value is the minimum brightness.
  PropertyValue<double> get rasterBrightnessMin => PropertyValue<double>.fromNative(mbgl_style_raster_layer_raster_brightness_min_get(ptr));
  set rasterBrightnessMin(PropertyValue<double> value) => mbgl_style_raster_layer_raster_brightness_min_set(ptr, value.ptr);

  /// Increase or reduce the brightness of the image. The value is the maximum brightness.
  PropertyValue<double> get rasterBrightnessMax => PropertyValue<double>.fromNative(mbgl_style_raster_layer_raster_brightness_max_get(ptr));
  set rasterBrightnessMax(PropertyValue<double> value) => mbgl_style_raster_layer_raster_brightness_max_set(ptr, value.ptr);

  /// Increase or reduce the saturation of the image.
  PropertyValue<double> get rasterSaturation => PropertyValue<double>.fromNative(mbgl_style_raster_layer_raster_saturation_get(ptr));
  set rasterSaturation(PropertyValue<double> value) => mbgl_style_raster_layer_raster_saturation_set(ptr, value.ptr);

  /// Increase or reduce the contrast of the image.
  PropertyValue<double> get rasterContrast => PropertyValue<double>.fromNative(mbgl_style_raster_layer_raster_contrast_get(ptr));
  set rasterContrast(PropertyValue<double> value) => mbgl_style_raster_layer_raster_contrast_set(ptr, value.ptr);

  /// The resampling/interpolation method to use for overscaling, also known as texture magnification filter
  PropertyValue<RasterResampling> get rasterResampling => PropertyValue<RasterResampling>.fromNative(mbgl_style_raster_layer_raster_resampling_get(ptr));
  set rasterResampling(PropertyValue<RasterResampling> value) => mbgl_style_raster_layer_raster_resampling_set(ptr, value.ptr);

  /// Fade duration when a new tile is added, or when a video is started or its coordinates are updated.
  PropertyValue<double> get rasterFadeDuration => PropertyValue<double>.fromNative(mbgl_style_raster_layer_raster_fade_duration_get(ptr));
  set rasterFadeDuration(PropertyValue<double> value) => mbgl_style_raster_layer_raster_fade_duration_set(ptr, value.ptr);
}

class HillshadeLayer extends Layer {
  HillshadeLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  HillshadeLayer({
    required String id,
    required String sourceId,
    Visibility? visibility,
    PropertyValue<double>? hillshadeIlluminationDirection,
    PropertyValue<HillshadeIlluminationAnchor>? hillshadeIlluminationAnchor,
    PropertyValue<double>? hillshadeExaggeration,
    PropertyValue<ui.Color>? hillshadeShadowColor,
    PropertyValue<ui.Color>? hillshadeHighlightColor,
    PropertyValue<ui.Color>? hillshadeAccentColor,
    super.minZoom,
    super.maxZoom,
    super.sourceLayer,
  }): super(ptr: mbgl_style_hillshade_layer_create(id.toNativeUtf8().cast(), sourceId.toNativeUtf8().cast())) {
    if (visibility != null) this.visibility = visibility;
    if (hillshadeIlluminationDirection != null) this.hillshadeIlluminationDirection = hillshadeIlluminationDirection;
    if (hillshadeIlluminationAnchor != null) this.hillshadeIlluminationAnchor = hillshadeIlluminationAnchor;
    if (hillshadeExaggeration != null) this.hillshadeExaggeration = hillshadeExaggeration;
    if (hillshadeShadowColor != null) this.hillshadeShadowColor = hillshadeShadowColor;
    if (hillshadeHighlightColor != null) this.hillshadeHighlightColor = hillshadeHighlightColor;
    if (hillshadeAccentColor != null) this.hillshadeAccentColor = hillshadeAccentColor;
  }

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_hillshade_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_hillshade_layer_visibility_set(ptr, value._toNative());

  /// The direction of the light source used to generate the hillshading with 0 as the top of the viewport if `hillshade-illumination-anchor` is set to `viewport` and due north if `hillshade-illumination-anchor` is set to `map`.
  PropertyValue<double> get hillshadeIlluminationDirection => PropertyValue<double>.fromNative(mbgl_style_hillshade_layer_hillshade_illumination_direction_get(ptr));
  set hillshadeIlluminationDirection(PropertyValue<double> value) => mbgl_style_hillshade_layer_hillshade_illumination_direction_set(ptr, value.ptr);

  /// Direction of light source when map is rotated.
  PropertyValue<HillshadeIlluminationAnchor> get hillshadeIlluminationAnchor => PropertyValue<HillshadeIlluminationAnchor>.fromNative(mbgl_style_hillshade_layer_hillshade_illumination_anchor_get(ptr));
  set hillshadeIlluminationAnchor(PropertyValue<HillshadeIlluminationAnchor> value) => mbgl_style_hillshade_layer_hillshade_illumination_anchor_set(ptr, value.ptr);

  /// Intensity of the hillshade
  PropertyValue<double> get hillshadeExaggeration => PropertyValue<double>.fromNative(mbgl_style_hillshade_layer_hillshade_exaggeration_get(ptr));
  set hillshadeExaggeration(PropertyValue<double> value) => mbgl_style_hillshade_layer_hillshade_exaggeration_set(ptr, value.ptr);

  /// The shading color of areas that face away from the light source.
  PropertyValue<ui.Color> get hillshadeShadowColor => PropertyValue<ui.Color>.fromNative(mbgl_style_hillshade_layer_hillshade_shadow_color_get(ptr));
  set hillshadeShadowColor(PropertyValue<ui.Color> value) => mbgl_style_hillshade_layer_hillshade_shadow_color_set(ptr, value.ptr);

  /// The shading color of areas that faces towards the light source.
  PropertyValue<ui.Color> get hillshadeHighlightColor => PropertyValue<ui.Color>.fromNative(mbgl_style_hillshade_layer_hillshade_highlight_color_get(ptr));
  set hillshadeHighlightColor(PropertyValue<ui.Color> value) => mbgl_style_hillshade_layer_hillshade_highlight_color_set(ptr, value.ptr);

  /// The shading color used to accentuate rugged terrain like sharp cliffs and gorges.
  PropertyValue<ui.Color> get hillshadeAccentColor => PropertyValue<ui.Color>.fromNative(mbgl_style_hillshade_layer_hillshade_accent_color_get(ptr));
  set hillshadeAccentColor(PropertyValue<ui.Color> value) => mbgl_style_hillshade_layer_hillshade_accent_color_set(ptr, value.ptr);
}

class BackgroundLayer extends Layer {
  BackgroundLayer.fromNative({required super.ptr, super.ownedByDart}): super.fromNative();

  BackgroundLayer({
    required String id,
    Visibility? visibility,
    PropertyValue<ui.Color>? backgroundColor,
    PropertyValue<ResolvedImage>? backgroundPattern,
    PropertyValue<double>? backgroundOpacity,
    super.minZoom,
    super.maxZoom,
  }): super(ptr: mbgl_style_background_layer_create(id.toNativeUtf8().cast())) {
    if (visibility != null) this.visibility = visibility;
    if (backgroundColor != null) this.backgroundColor = backgroundColor;
    if (backgroundPattern != null) this.backgroundPattern = backgroundPattern;
    if (backgroundOpacity != null) this.backgroundOpacity = backgroundOpacity;
  }

  /// Whether this layer is displayed.
  Visibility get visibility => Visibility._fromNative(mbgl_style_background_layer_visibility_get(ptr));
  set visibility(Visibility value) => mbgl_style_background_layer_visibility_set(ptr, value._toNative());

  /// The color with which the background will be drawn.
  PropertyValue<ui.Color> get backgroundColor => PropertyValue<ui.Color>.fromNative(mbgl_style_background_layer_background_color_get(ptr));
  set backgroundColor(PropertyValue<ui.Color> value) => mbgl_style_background_layer_background_color_set(ptr, value.ptr);

  /// Name of image in sprite to use for drawing an image background. For seamless patterns, image width and height must be a factor of two (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be evaluated only at integer zoom levels.
  PropertyValue<ResolvedImage> get backgroundPattern => PropertyValue<ResolvedImage>.fromNative(mbgl_style_background_layer_background_pattern_get(ptr));
  set backgroundPattern(PropertyValue<ResolvedImage> value) => mbgl_style_background_layer_background_pattern_set(ptr, value.ptr);

  /// The opacity at which the background will be drawn.
  PropertyValue<double> get backgroundOpacity => PropertyValue<double>.fromNative(mbgl_style_background_layer_background_opacity_get(ptr));
  set backgroundOpacity(PropertyValue<double> value) => mbgl_style_background_layer_background_opacity_set(ptr, value.ptr);
}

/// Whether this layer is displayed.
enum Visibility {
  /// The layer is shown.
  visible,

  /// The layer is not shown.
  none;

  static Visibility _fromNative(MBGL_STYLE_VISIBILITY value) => switch (value) {
    MBGL_STYLE_VISIBILITY.MBGL_STYLE_VISIBILITY_VISIBLE => Visibility.visible,
    MBGL_STYLE_VISIBILITY.MBGL_STYLE_VISIBILITY_NONE => Visibility.none,
  };

  MBGL_STYLE_VISIBILITY _toNative() => switch (this) {
    Visibility.visible => MBGL_STYLE_VISIBILITY.MBGL_STYLE_VISIBILITY_VISIBLE,
    Visibility.none => MBGL_STYLE_VISIBILITY.MBGL_STYLE_VISIBILITY_NONE,
  };
}

/// Controls the frame of reference for `fill-translate`.
enum FillTranslateAnchor {
  /// The fill is translated relative to the map.
  map,

  /// The fill is translated relative to the viewport.
  viewport;

  static FillTranslateAnchor _fromNative(MBGL_STYLE_FILL_TRANSLATE_ANCHOR value) => switch (value) {
    MBGL_STYLE_FILL_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_TRANSLATE_ANCHOR_MAP => FillTranslateAnchor.map,
    MBGL_STYLE_FILL_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_TRANSLATE_ANCHOR_VIEWPORT => FillTranslateAnchor.viewport,
  };

  MBGL_STYLE_FILL_TRANSLATE_ANCHOR _toNative() => switch (this) {
    FillTranslateAnchor.map => MBGL_STYLE_FILL_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_TRANSLATE_ANCHOR_MAP,
    FillTranslateAnchor.viewport => MBGL_STYLE_FILL_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_TRANSLATE_ANCHOR_VIEWPORT,
  };
}

/// The display of line endings.
enum LineCap {
  /// A cap with a squared-off end which is drawn to the exact endpoint of the line.
  butt,

  /// A cap with a rounded end which is drawn beyond the endpoint of the line at a radius of one-half of the line's width and centered on the endpoint of the line.
  round,

  /// A cap with a squared-off end which is drawn beyond the endpoint of the line at a distance of one-half of the line's width.
  square;

  static LineCap _fromNative(MBGL_STYLE_LINE_CAP value) => switch (value) {
    MBGL_STYLE_LINE_CAP.MBGL_STYLE_LINE_CAP_BUTT => LineCap.butt,
    MBGL_STYLE_LINE_CAP.MBGL_STYLE_LINE_CAP_ROUND => LineCap.round,
    MBGL_STYLE_LINE_CAP.MBGL_STYLE_LINE_CAP_SQUARE => LineCap.square,
  };

  MBGL_STYLE_LINE_CAP _toNative() => switch (this) {
    LineCap.butt => MBGL_STYLE_LINE_CAP.MBGL_STYLE_LINE_CAP_BUTT,
    LineCap.round => MBGL_STYLE_LINE_CAP.MBGL_STYLE_LINE_CAP_ROUND,
    LineCap.square => MBGL_STYLE_LINE_CAP.MBGL_STYLE_LINE_CAP_SQUARE,
  };
}

/// The display of lines when joining.
enum LineJoin {
  /// A join with a squared-off end which is drawn beyond the endpoint of the line at a distance of one-half of the line's width.
  bevel,

  /// A join with a rounded end which is drawn beyond the endpoint of the line at a radius of one-half of the line's width and centered on the endpoint of the line.
  round,

  /// A join with a sharp, angled corner which is drawn with the outer sides beyond the endpoint of the path until they meet.
  miter;

  static LineJoin _fromNative(MBGL_STYLE_LINE_JOIN value) => switch (value) {
    MBGL_STYLE_LINE_JOIN.MBGL_STYLE_LINE_JOIN_BEVEL => LineJoin.bevel,
    MBGL_STYLE_LINE_JOIN.MBGL_STYLE_LINE_JOIN_ROUND => LineJoin.round,
    MBGL_STYLE_LINE_JOIN.MBGL_STYLE_LINE_JOIN_MITER => LineJoin.miter,
  };

  MBGL_STYLE_LINE_JOIN _toNative() => switch (this) {
    LineJoin.bevel => MBGL_STYLE_LINE_JOIN.MBGL_STYLE_LINE_JOIN_BEVEL,
    LineJoin.round => MBGL_STYLE_LINE_JOIN.MBGL_STYLE_LINE_JOIN_ROUND,
    LineJoin.miter => MBGL_STYLE_LINE_JOIN.MBGL_STYLE_LINE_JOIN_MITER,
  };
}

/// Controls the frame of reference for `line-translate`.
enum LineTranslateAnchor {
  /// The line is translated relative to the map.
  map,

  /// The line is translated relative to the viewport.
  viewport;

  static LineTranslateAnchor _fromNative(MBGL_STYLE_LINE_TRANSLATE_ANCHOR value) => switch (value) {
    MBGL_STYLE_LINE_TRANSLATE_ANCHOR.MBGL_STYLE_LINE_TRANSLATE_ANCHOR_MAP => LineTranslateAnchor.map,
    MBGL_STYLE_LINE_TRANSLATE_ANCHOR.MBGL_STYLE_LINE_TRANSLATE_ANCHOR_VIEWPORT => LineTranslateAnchor.viewport,
  };

  MBGL_STYLE_LINE_TRANSLATE_ANCHOR _toNative() => switch (this) {
    LineTranslateAnchor.map => MBGL_STYLE_LINE_TRANSLATE_ANCHOR.MBGL_STYLE_LINE_TRANSLATE_ANCHOR_MAP,
    LineTranslateAnchor.viewport => MBGL_STYLE_LINE_TRANSLATE_ANCHOR.MBGL_STYLE_LINE_TRANSLATE_ANCHOR_VIEWPORT,
  };
}

/// Label placement relative to its geometry.
enum SymbolPlacement {
  /// The label is placed at the point where the geometry is located.
  point,

  /// The label is placed along the line of the geometry. Can only be used on `LineString` and `Polygon` geometries.
  line,

  /// The label is placed at the center of the line of the geometry. Can only be used on `LineString` and `Polygon` geometries. Note that a single feature in a vector tile may contain multiple line geometries.
  lineCenter;

  static SymbolPlacement _fromNative(MBGL_STYLE_SYMBOL_PLACEMENT value) => switch (value) {
    MBGL_STYLE_SYMBOL_PLACEMENT.MBGL_STYLE_SYMBOL_PLACEMENT_POINT => SymbolPlacement.point,
    MBGL_STYLE_SYMBOL_PLACEMENT.MBGL_STYLE_SYMBOL_PLACEMENT_LINE => SymbolPlacement.line,
    MBGL_STYLE_SYMBOL_PLACEMENT.MBGL_STYLE_SYMBOL_PLACEMENT_LINE_CENTER => SymbolPlacement.lineCenter,
  };

  MBGL_STYLE_SYMBOL_PLACEMENT _toNative() => switch (this) {
    SymbolPlacement.point => MBGL_STYLE_SYMBOL_PLACEMENT.MBGL_STYLE_SYMBOL_PLACEMENT_POINT,
    SymbolPlacement.line => MBGL_STYLE_SYMBOL_PLACEMENT.MBGL_STYLE_SYMBOL_PLACEMENT_LINE,
    SymbolPlacement.lineCenter => MBGL_STYLE_SYMBOL_PLACEMENT.MBGL_STYLE_SYMBOL_PLACEMENT_LINE_CENTER,
  };
}

/// Determines whether overlapping symbols in the same layer are rendered in the order that they appear in the data source or by their y-position relative to the viewport. To control the order and prioritization of symbols otherwise, use `symbol-sort-key`.
enum SymbolZOrder {
  /// Sorts symbols by `symbol-sort-key` if set. Otherwise, sorts symbols by their y-position relative to the viewport if `icon-allow-overlap` or `text-allow-overlap` is set to `true` or `icon-ignore-placement` or `text-ignore-placement` is `false`.
  auto,

  /// Sorts symbols by their y-position relative to the viewport if `icon-allow-overlap` or `text-allow-overlap` is set to `true` or `icon-ignore-placement` or `text-ignore-placement` is `false`.
  viewportY,

  /// Sorts symbols by `symbol-sort-key` if set. Otherwise, no sorting is applied; symbols are rendered in the same order as the source data.
  source;

  static SymbolZOrder _fromNative(MBGL_STYLE_SYMBOL_Z_ORDER value) => switch (value) {
    MBGL_STYLE_SYMBOL_Z_ORDER.MBGL_STYLE_SYMBOL_Z_ORDER_AUTO => SymbolZOrder.auto,
    MBGL_STYLE_SYMBOL_Z_ORDER.MBGL_STYLE_SYMBOL_Z_ORDER_VIEWPORT_Y => SymbolZOrder.viewportY,
    MBGL_STYLE_SYMBOL_Z_ORDER.MBGL_STYLE_SYMBOL_Z_ORDER_SOURCE => SymbolZOrder.source,
  };

  MBGL_STYLE_SYMBOL_Z_ORDER _toNative() => switch (this) {
    SymbolZOrder.auto => MBGL_STYLE_SYMBOL_Z_ORDER.MBGL_STYLE_SYMBOL_Z_ORDER_AUTO,
    SymbolZOrder.viewportY => MBGL_STYLE_SYMBOL_Z_ORDER.MBGL_STYLE_SYMBOL_Z_ORDER_VIEWPORT_Y,
    SymbolZOrder.source => MBGL_STYLE_SYMBOL_Z_ORDER.MBGL_STYLE_SYMBOL_Z_ORDER_SOURCE,
  };
}

/// In combination with `symbol-placement`, determines the rotation behavior of icons.
enum IconRotationAlignment {
  /// When `symbol-placement` is set to `point`, aligns icons east-west. When `symbol-placement` is set to `line` or `line-center`, aligns icon x-axes with the line.
  map,

  /// Produces icons whose x-axes are aligned with the x-axis of the viewport, regardless of the value of `symbol-placement`.
  viewport,

  /// When `symbol-placement` is set to `point`, this is equivalent to `viewport`. When `symbol-placement` is set to `line` or `line-center`, this is equivalent to `map`.
  auto;

  static IconRotationAlignment _fromNative(MBGL_STYLE_ICON_ROTATION_ALIGNMENT value) => switch (value) {
    MBGL_STYLE_ICON_ROTATION_ALIGNMENT.MBGL_STYLE_ICON_ROTATION_ALIGNMENT_MAP => IconRotationAlignment.map,
    MBGL_STYLE_ICON_ROTATION_ALIGNMENT.MBGL_STYLE_ICON_ROTATION_ALIGNMENT_VIEWPORT => IconRotationAlignment.viewport,
    MBGL_STYLE_ICON_ROTATION_ALIGNMENT.MBGL_STYLE_ICON_ROTATION_ALIGNMENT_AUTO => IconRotationAlignment.auto,
  };

  MBGL_STYLE_ICON_ROTATION_ALIGNMENT _toNative() => switch (this) {
    IconRotationAlignment.map => MBGL_STYLE_ICON_ROTATION_ALIGNMENT.MBGL_STYLE_ICON_ROTATION_ALIGNMENT_MAP,
    IconRotationAlignment.viewport => MBGL_STYLE_ICON_ROTATION_ALIGNMENT.MBGL_STYLE_ICON_ROTATION_ALIGNMENT_VIEWPORT,
    IconRotationAlignment.auto => MBGL_STYLE_ICON_ROTATION_ALIGNMENT.MBGL_STYLE_ICON_ROTATION_ALIGNMENT_AUTO,
  };
}

/// Scales the icon to fit around the associated text.
enum IconTextFit {
  /// The icon is displayed at its intrinsic aspect ratio.
  none,

  /// The icon is scaled in the x-dimension to fit the width of the text.
  width,

  /// The icon is scaled in the y-dimension to fit the height of the text.
  height,

  /// The icon is scaled in both x- and y-dimensions.
  both;

  static IconTextFit _fromNative(MBGL_STYLE_ICON_TEXT_FIT value) => switch (value) {
    MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_NONE => IconTextFit.none,
    MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_WIDTH => IconTextFit.width,
    MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_HEIGHT => IconTextFit.height,
    MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_BOTH => IconTextFit.both,
  };

  MBGL_STYLE_ICON_TEXT_FIT _toNative() => switch (this) {
    IconTextFit.none => MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_NONE,
    IconTextFit.width => MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_WIDTH,
    IconTextFit.height => MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_HEIGHT,
    IconTextFit.both => MBGL_STYLE_ICON_TEXT_FIT.MBGL_STYLE_ICON_TEXT_FIT_BOTH,
  };
}

/// Part of the icon placed closest to the anchor.
enum IconAnchor {
  /// The center of the icon is placed closest to the anchor.
  center,

  /// The left side of the icon is placed closest to the anchor.
  left,

  /// The right side of the icon is placed closest to the anchor.
  right,

  /// The top of the icon is placed closest to the anchor.
  top,

  /// The bottom of the icon is placed closest to the anchor.
  bottom,

  /// The top left corner of the icon is placed closest to the anchor.
  topLeft,

  /// The top right corner of the icon is placed closest to the anchor.
  topRight,

  /// The bottom left corner of the icon is placed closest to the anchor.
  bottomLeft,

  /// The bottom right corner of the icon is placed closest to the anchor.
  bottomRight;

  static IconAnchor _fromNative(MBGL_STYLE_ICON_ANCHOR value) => switch (value) {
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_CENTER => IconAnchor.center,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_LEFT => IconAnchor.left,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_RIGHT => IconAnchor.right,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_TOP => IconAnchor.top,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_BOTTOM => IconAnchor.bottom,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_TOP_LEFT => IconAnchor.topLeft,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_TOP_RIGHT => IconAnchor.topRight,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_BOTTOM_LEFT => IconAnchor.bottomLeft,
    MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_BOTTOM_RIGHT => IconAnchor.bottomRight,
  };

  MBGL_STYLE_ICON_ANCHOR _toNative() => switch (this) {
    IconAnchor.center => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_CENTER,
    IconAnchor.left => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_LEFT,
    IconAnchor.right => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_RIGHT,
    IconAnchor.top => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_TOP,
    IconAnchor.bottom => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_BOTTOM,
    IconAnchor.topLeft => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_TOP_LEFT,
    IconAnchor.topRight => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_TOP_RIGHT,
    IconAnchor.bottomLeft => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_BOTTOM_LEFT,
    IconAnchor.bottomRight => MBGL_STYLE_ICON_ANCHOR.MBGL_STYLE_ICON_ANCHOR_BOTTOM_RIGHT,
  };
}

/// Orientation of icon when map is pitched.
enum IconPitchAlignment {
  /// The icon is aligned to the plane of the map.
  map,

  /// The icon is aligned to the plane of the viewport.
  viewport,

  /// Automatically matches the value of `icon-rotation-alignment`.
  auto;

  static IconPitchAlignment _fromNative(MBGL_STYLE_ICON_PITCH_ALIGNMENT value) => switch (value) {
    MBGL_STYLE_ICON_PITCH_ALIGNMENT.MBGL_STYLE_ICON_PITCH_ALIGNMENT_MAP => IconPitchAlignment.map,
    MBGL_STYLE_ICON_PITCH_ALIGNMENT.MBGL_STYLE_ICON_PITCH_ALIGNMENT_VIEWPORT => IconPitchAlignment.viewport,
    MBGL_STYLE_ICON_PITCH_ALIGNMENT.MBGL_STYLE_ICON_PITCH_ALIGNMENT_AUTO => IconPitchAlignment.auto,
  };

  MBGL_STYLE_ICON_PITCH_ALIGNMENT _toNative() => switch (this) {
    IconPitchAlignment.map => MBGL_STYLE_ICON_PITCH_ALIGNMENT.MBGL_STYLE_ICON_PITCH_ALIGNMENT_MAP,
    IconPitchAlignment.viewport => MBGL_STYLE_ICON_PITCH_ALIGNMENT.MBGL_STYLE_ICON_PITCH_ALIGNMENT_VIEWPORT,
    IconPitchAlignment.auto => MBGL_STYLE_ICON_PITCH_ALIGNMENT.MBGL_STYLE_ICON_PITCH_ALIGNMENT_AUTO,
  };
}

/// Orientation of text when map is pitched.
enum TextPitchAlignment {
  /// The text is aligned to the plane of the map.
  map,

  /// The text is aligned to the plane of the viewport.
  viewport,

  /// Automatically matches the value of `text-rotation-alignment`.
  auto;

  static TextPitchAlignment _fromNative(MBGL_STYLE_TEXT_PITCH_ALIGNMENT value) => switch (value) {
    MBGL_STYLE_TEXT_PITCH_ALIGNMENT.MBGL_STYLE_TEXT_PITCH_ALIGNMENT_MAP => TextPitchAlignment.map,
    MBGL_STYLE_TEXT_PITCH_ALIGNMENT.MBGL_STYLE_TEXT_PITCH_ALIGNMENT_VIEWPORT => TextPitchAlignment.viewport,
    MBGL_STYLE_TEXT_PITCH_ALIGNMENT.MBGL_STYLE_TEXT_PITCH_ALIGNMENT_AUTO => TextPitchAlignment.auto,
  };

  MBGL_STYLE_TEXT_PITCH_ALIGNMENT _toNative() => switch (this) {
    TextPitchAlignment.map => MBGL_STYLE_TEXT_PITCH_ALIGNMENT.MBGL_STYLE_TEXT_PITCH_ALIGNMENT_MAP,
    TextPitchAlignment.viewport => MBGL_STYLE_TEXT_PITCH_ALIGNMENT.MBGL_STYLE_TEXT_PITCH_ALIGNMENT_VIEWPORT,
    TextPitchAlignment.auto => MBGL_STYLE_TEXT_PITCH_ALIGNMENT.MBGL_STYLE_TEXT_PITCH_ALIGNMENT_AUTO,
  };
}

/// In combination with `symbol-placement`, determines the rotation behavior of the individual glyphs forming the text.
enum TextRotationAlignment {
  /// When `symbol-placement` is set to `point`, aligns text east-west. When `symbol-placement` is set to `line` or `line-center`, aligns text x-axes with the line.
  map,

  /// Produces glyphs whose x-axes are aligned with the x-axis of the viewport, regardless of the value of `symbol-placement`.
  viewport,

  /// When `symbol-placement` is set to `point`, this is equivalent to `viewport`. When `symbol-placement` is set to `line` or `line-center`, this is equivalent to `map`.
  auto;

  static TextRotationAlignment _fromNative(MBGL_STYLE_TEXT_ROTATION_ALIGNMENT value) => switch (value) {
    MBGL_STYLE_TEXT_ROTATION_ALIGNMENT.MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_MAP => TextRotationAlignment.map,
    MBGL_STYLE_TEXT_ROTATION_ALIGNMENT.MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_VIEWPORT => TextRotationAlignment.viewport,
    MBGL_STYLE_TEXT_ROTATION_ALIGNMENT.MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_AUTO => TextRotationAlignment.auto,
  };

  MBGL_STYLE_TEXT_ROTATION_ALIGNMENT _toNative() => switch (this) {
    TextRotationAlignment.map => MBGL_STYLE_TEXT_ROTATION_ALIGNMENT.MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_MAP,
    TextRotationAlignment.viewport => MBGL_STYLE_TEXT_ROTATION_ALIGNMENT.MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_VIEWPORT,
    TextRotationAlignment.auto => MBGL_STYLE_TEXT_ROTATION_ALIGNMENT.MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_AUTO,
  };
}

/// Text justification options.
enum TextJustify {
  /// The text is aligned towards the anchor position.
  auto,

  /// The text is aligned to the left.
  left,

  /// The text is centered.
  center,

  /// The text is aligned to the right.
  right;

  static TextJustify _fromNative(MBGL_STYLE_TEXT_JUSTIFY value) => switch (value) {
    MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_AUTO => TextJustify.auto,
    MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_LEFT => TextJustify.left,
    MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_CENTER => TextJustify.center,
    MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_RIGHT => TextJustify.right,
  };

  MBGL_STYLE_TEXT_JUSTIFY _toNative() => switch (this) {
    TextJustify.auto => MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_AUTO,
    TextJustify.left => MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_LEFT,
    TextJustify.center => MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_CENTER,
    TextJustify.right => MBGL_STYLE_TEXT_JUSTIFY.MBGL_STYLE_TEXT_JUSTIFY_RIGHT,
  };
}

enum TextVariableAnchor {
  /// The center of the text is placed closest to the anchor.
  center,

  /// The left side of the text is placed closest to the anchor.
  left,

  /// The right side of the text is placed closest to the anchor.
  right,

  /// The top of the text is placed closest to the anchor.
  top,

  /// The bottom of the text is placed closest to the anchor.
  bottom,

  /// The top left corner of the text is placed closest to the anchor.
  topLeft,

  /// The top right corner of the text is placed closest to the anchor.
  topRight,

  /// The bottom left corner of the text is placed closest to the anchor.
  bottomLeft,

  /// The bottom right corner of the text is placed closest to the anchor.
  bottomRight;

  static TextVariableAnchor _fromNative(MBGL_STYLE_TEXT_VARIABLE_ANCHOR value) => switch (value) {
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_CENTER => TextVariableAnchor.center,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_LEFT => TextVariableAnchor.left,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_RIGHT => TextVariableAnchor.right,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP => TextVariableAnchor.top,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM => TextVariableAnchor.bottom,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_LEFT => TextVariableAnchor.topLeft,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_RIGHT => TextVariableAnchor.topRight,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_LEFT => TextVariableAnchor.bottomLeft,
    MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_RIGHT => TextVariableAnchor.bottomRight,
  };

  MBGL_STYLE_TEXT_VARIABLE_ANCHOR _toNative() => switch (this) {
    TextVariableAnchor.center => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_CENTER,
    TextVariableAnchor.left => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_LEFT,
    TextVariableAnchor.right => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_RIGHT,
    TextVariableAnchor.top => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP,
    TextVariableAnchor.bottom => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM,
    TextVariableAnchor.topLeft => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_LEFT,
    TextVariableAnchor.topRight => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_RIGHT,
    TextVariableAnchor.bottomLeft => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_LEFT,
    TextVariableAnchor.bottomRight => MBGL_STYLE_TEXT_VARIABLE_ANCHOR.MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_RIGHT,
  };
}

/// Part of the text placed closest to the anchor.
enum TextAnchor {
  /// The center of the text is placed closest to the anchor.
  center,

  /// The left side of the text is placed closest to the anchor.
  left,

  /// The right side of the text is placed closest to the anchor.
  right,

  /// The top of the text is placed closest to the anchor.
  top,

  /// The bottom of the text is placed closest to the anchor.
  bottom,

  /// The top left corner of the text is placed closest to the anchor.
  topLeft,

  /// The top right corner of the text is placed closest to the anchor.
  topRight,

  /// The bottom left corner of the text is placed closest to the anchor.
  bottomLeft,

  /// The bottom right corner of the text is placed closest to the anchor.
  bottomRight;

  static TextAnchor _fromNative(MBGL_STYLE_TEXT_ANCHOR value) => switch (value) {
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_CENTER => TextAnchor.center,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_LEFT => TextAnchor.left,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_RIGHT => TextAnchor.right,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_TOP => TextAnchor.top,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_BOTTOM => TextAnchor.bottom,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_TOP_LEFT => TextAnchor.topLeft,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_TOP_RIGHT => TextAnchor.topRight,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_BOTTOM_LEFT => TextAnchor.bottomLeft,
    MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_BOTTOM_RIGHT => TextAnchor.bottomRight,
  };

  MBGL_STYLE_TEXT_ANCHOR _toNative() => switch (this) {
    TextAnchor.center => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_CENTER,
    TextAnchor.left => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_LEFT,
    TextAnchor.right => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_RIGHT,
    TextAnchor.top => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_TOP,
    TextAnchor.bottom => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_BOTTOM,
    TextAnchor.topLeft => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_TOP_LEFT,
    TextAnchor.topRight => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_TOP_RIGHT,
    TextAnchor.bottomLeft => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_BOTTOM_LEFT,
    TextAnchor.bottomRight => MBGL_STYLE_TEXT_ANCHOR.MBGL_STYLE_TEXT_ANCHOR_BOTTOM_RIGHT,
  };
}

enum TextWritingMode {
  /// If a text's language supports horizontal writing mode, symbols with point placement would be laid out horizontally.
  horizontal,

  /// If a text's language supports vertical writing mode, symbols with point placement would be laid out vertically.
  vertical;

  static TextWritingMode _fromNative(MBGL_STYLE_TEXT_WRITING_MODE value) => switch (value) {
    MBGL_STYLE_TEXT_WRITING_MODE.MBGL_STYLE_TEXT_WRITING_MODE_HORIZONTAL => TextWritingMode.horizontal,
    MBGL_STYLE_TEXT_WRITING_MODE.MBGL_STYLE_TEXT_WRITING_MODE_VERTICAL => TextWritingMode.vertical,
  };

  MBGL_STYLE_TEXT_WRITING_MODE _toNative() => switch (this) {
    TextWritingMode.horizontal => MBGL_STYLE_TEXT_WRITING_MODE.MBGL_STYLE_TEXT_WRITING_MODE_HORIZONTAL,
    TextWritingMode.vertical => MBGL_STYLE_TEXT_WRITING_MODE.MBGL_STYLE_TEXT_WRITING_MODE_VERTICAL,
  };
}

/// Specifies how to capitalize text, similar to the CSS `text-transform` property.
enum TextTransform {
  /// The text is not altered.
  none,

  /// Forces all letters to be displayed in uppercase.
  uppercase,

  /// Forces all letters to be displayed in lowercase.
  lowercase;

  static TextTransform _fromNative(MBGL_STYLE_TEXT_TRANSFORM value) => switch (value) {
    MBGL_STYLE_TEXT_TRANSFORM.MBGL_STYLE_TEXT_TRANSFORM_NONE => TextTransform.none,
    MBGL_STYLE_TEXT_TRANSFORM.MBGL_STYLE_TEXT_TRANSFORM_UPPERCASE => TextTransform.uppercase,
    MBGL_STYLE_TEXT_TRANSFORM.MBGL_STYLE_TEXT_TRANSFORM_LOWERCASE => TextTransform.lowercase,
  };

  MBGL_STYLE_TEXT_TRANSFORM _toNative() => switch (this) {
    TextTransform.none => MBGL_STYLE_TEXT_TRANSFORM.MBGL_STYLE_TEXT_TRANSFORM_NONE,
    TextTransform.uppercase => MBGL_STYLE_TEXT_TRANSFORM.MBGL_STYLE_TEXT_TRANSFORM_UPPERCASE,
    TextTransform.lowercase => MBGL_STYLE_TEXT_TRANSFORM.MBGL_STYLE_TEXT_TRANSFORM_LOWERCASE,
  };
}

/// Controls the frame of reference for `icon-translate`.
enum IconTranslateAnchor {
  /// Icons are translated relative to the map.
  map,

  /// Icons are translated relative to the viewport.
  viewport;

  static IconTranslateAnchor _fromNative(MBGL_STYLE_ICON_TRANSLATE_ANCHOR value) => switch (value) {
    MBGL_STYLE_ICON_TRANSLATE_ANCHOR.MBGL_STYLE_ICON_TRANSLATE_ANCHOR_MAP => IconTranslateAnchor.map,
    MBGL_STYLE_ICON_TRANSLATE_ANCHOR.MBGL_STYLE_ICON_TRANSLATE_ANCHOR_VIEWPORT => IconTranslateAnchor.viewport,
  };

  MBGL_STYLE_ICON_TRANSLATE_ANCHOR _toNative() => switch (this) {
    IconTranslateAnchor.map => MBGL_STYLE_ICON_TRANSLATE_ANCHOR.MBGL_STYLE_ICON_TRANSLATE_ANCHOR_MAP,
    IconTranslateAnchor.viewport => MBGL_STYLE_ICON_TRANSLATE_ANCHOR.MBGL_STYLE_ICON_TRANSLATE_ANCHOR_VIEWPORT,
  };
}

/// Controls the frame of reference for `text-translate`.
enum TextTranslateAnchor {
  /// The text is translated relative to the map.
  map,

  /// The text is translated relative to the viewport.
  viewport;

  static TextTranslateAnchor _fromNative(MBGL_STYLE_TEXT_TRANSLATE_ANCHOR value) => switch (value) {
    MBGL_STYLE_TEXT_TRANSLATE_ANCHOR.MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_MAP => TextTranslateAnchor.map,
    MBGL_STYLE_TEXT_TRANSLATE_ANCHOR.MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_VIEWPORT => TextTranslateAnchor.viewport,
  };

  MBGL_STYLE_TEXT_TRANSLATE_ANCHOR _toNative() => switch (this) {
    TextTranslateAnchor.map => MBGL_STYLE_TEXT_TRANSLATE_ANCHOR.MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_MAP,
    TextTranslateAnchor.viewport => MBGL_STYLE_TEXT_TRANSLATE_ANCHOR.MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_VIEWPORT,
  };
}

/// Controls the frame of reference for `circle-translate`.
enum CircleTranslateAnchor {
  /// The circle is translated relative to the map.
  map,

  /// The circle is translated relative to the viewport.
  viewport;

  static CircleTranslateAnchor _fromNative(MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR value) => switch (value) {
    MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR.MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_MAP => CircleTranslateAnchor.map,
    MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR.MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_VIEWPORT => CircleTranslateAnchor.viewport,
  };

  MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR _toNative() => switch (this) {
    CircleTranslateAnchor.map => MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR.MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_MAP,
    CircleTranslateAnchor.viewport => MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR.MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_VIEWPORT,
  };
}

/// Controls the scaling behavior of the circle when the map is pitched.
enum CirclePitchScale {
  /// Circles are scaled according to their apparent distance to the camera.
  map,

  /// Circles are not scaled.
  viewport;

  static CirclePitchScale _fromNative(MBGL_STYLE_CIRCLE_PITCH_SCALE value) => switch (value) {
    MBGL_STYLE_CIRCLE_PITCH_SCALE.MBGL_STYLE_CIRCLE_PITCH_SCALE_MAP => CirclePitchScale.map,
    MBGL_STYLE_CIRCLE_PITCH_SCALE.MBGL_STYLE_CIRCLE_PITCH_SCALE_VIEWPORT => CirclePitchScale.viewport,
  };

  MBGL_STYLE_CIRCLE_PITCH_SCALE _toNative() => switch (this) {
    CirclePitchScale.map => MBGL_STYLE_CIRCLE_PITCH_SCALE.MBGL_STYLE_CIRCLE_PITCH_SCALE_MAP,
    CirclePitchScale.viewport => MBGL_STYLE_CIRCLE_PITCH_SCALE.MBGL_STYLE_CIRCLE_PITCH_SCALE_VIEWPORT,
  };
}

/// Orientation of circle when map is pitched.
enum CirclePitchAlignment {
  /// The circle is aligned to the plane of the map.
  map,

  /// The circle is aligned to the plane of the viewport.
  viewport;

  static CirclePitchAlignment _fromNative(MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT value) => switch (value) {
    MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT.MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_MAP => CirclePitchAlignment.map,
    MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT.MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_VIEWPORT => CirclePitchAlignment.viewport,
  };

  MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT _toNative() => switch (this) {
    CirclePitchAlignment.map => MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT.MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_MAP,
    CirclePitchAlignment.viewport => MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT.MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_VIEWPORT,
  };
}

/// Controls the frame of reference for `fill-extrusion-translate`.
enum FillExtrusionTranslateAnchor {
  /// The fill extrusion is translated relative to the map.
  map,

  /// The fill extrusion is translated relative to the viewport.
  viewport;

  static FillExtrusionTranslateAnchor _fromNative(MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR value) => switch (value) {
    MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_MAP => FillExtrusionTranslateAnchor.map,
    MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_VIEWPORT => FillExtrusionTranslateAnchor.viewport,
  };

  MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR _toNative() => switch (this) {
    FillExtrusionTranslateAnchor.map => MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_MAP,
    FillExtrusionTranslateAnchor.viewport => MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR.MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_VIEWPORT,
  };
}

/// The resampling/interpolation method to use for overscaling, also known as texture magnification filter
enum RasterResampling {
  /// (Bi)linear filtering interpolates pixel values using the weighted average of the four closest original source pixels creating a smooth but blurry look when overscaled
  linear,

  /// Nearest neighbor filtering interpolates pixel values using the nearest original source pixel creating a sharp but pixelated look when overscaled
  nearest;

  static RasterResampling _fromNative(MBGL_STYLE_RASTER_RESAMPLING value) => switch (value) {
    MBGL_STYLE_RASTER_RESAMPLING.MBGL_STYLE_RASTER_RESAMPLING_LINEAR => RasterResampling.linear,
    MBGL_STYLE_RASTER_RESAMPLING.MBGL_STYLE_RASTER_RESAMPLING_NEAREST => RasterResampling.nearest,
  };

  MBGL_STYLE_RASTER_RESAMPLING _toNative() => switch (this) {
    RasterResampling.linear => MBGL_STYLE_RASTER_RESAMPLING.MBGL_STYLE_RASTER_RESAMPLING_LINEAR,
    RasterResampling.nearest => MBGL_STYLE_RASTER_RESAMPLING.MBGL_STYLE_RASTER_RESAMPLING_NEAREST,
  };
}

/// Direction of light source when map is rotated.
enum HillshadeIlluminationAnchor {
  /// The hillshade illumination is relative to the north direction.
  map,

  /// The hillshade illumination is relative to the top of the viewport.
  viewport;

  static HillshadeIlluminationAnchor _fromNative(MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR value) => switch (value) {
    MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR.MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_MAP => HillshadeIlluminationAnchor.map,
    MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR.MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_VIEWPORT => HillshadeIlluminationAnchor.viewport,
  };

  MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR _toNative() => switch (this) {
    HillshadeIlluminationAnchor.map => MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR.MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_MAP,
    HillshadeIlluminationAnchor.viewport => MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR.MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_VIEWPORT,
  };
}


class PropertyValueFfi {
  static mbgl_property_value_t create<T>(T value) => switch (value) {
    (SymbolZOrder v) => mbgl_style_property_value_mbgl_style_symbol_z_order_create_constant(v._toNative()),
    (bool v) => mbgl_style_property_value_bool_create_constant(v),
    (ui.Color v) => mbgl_style_property_value_mbgl_color_create_constant(v.toMbglColor()),
    (RasterResampling v) => mbgl_style_property_value_mbgl_style_raster_resampling_create_constant(v._toNative()),
    (FillTranslateAnchor v) => mbgl_style_property_value_mbgl_style_fill_translate_anchor_create_constant(v._toNative()),
    (ResolvedImage v) => mbgl_style_property_value_mbgl_style_expression_image_create_constant(nullptr),
    (LineCap v) => mbgl_style_property_value_mbgl_style_line_cap_create_constant(v._toNative()),
    (LineJoin v) => mbgl_style_property_value_mbgl_style_line_join_create_constant(v._toNative()),
    (LineTranslateAnchor v) => mbgl_style_property_value_mbgl_style_line_translate_anchor_create_constant(v._toNative()),
    (FillExtrusionTranslateAnchor v) => mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_create_constant(v._toNative()),
    (ui.Color v) => mbgl_style_property_value_mbgl_color_create_constant(v.toMbglColor()),
    (SymbolPlacement v) => mbgl_style_property_value_mbgl_style_symbol_placement_create_constant(v._toNative()),
    (double v) => mbgl_style_property_value_float_create_constant(v),
    (IconRotationAlignment v) => mbgl_style_property_value_mbgl_style_icon_rotation_alignment_create_constant(v._toNative()),
    (IconTextFit v) => mbgl_style_property_value_mbgl_style_icon_text_fit_create_constant(v._toNative()),
    (CirclePitchAlignment v) => mbgl_style_property_value_mbgl_style_circle_pitch_alignment_create_constant(v._toNative()),
    (ui.EdgeInsets v) => mbgl_style_property_value_mbgl_padding_create_constant(v.toMbglPadding()),
    (IconAnchor v) => mbgl_style_property_value_mbgl_style_icon_anchor_create_constant(v._toNative()),
    (IconPitchAlignment v) => mbgl_style_property_value_mbgl_style_icon_pitch_alignment_create_constant(v._toNative()),
    (TextPitchAlignment v) => mbgl_style_property_value_mbgl_style_text_pitch_alignment_create_constant(v._toNative()),
    (TextRotationAlignment v) => mbgl_style_property_value_mbgl_style_text_rotation_alignment_create_constant(v._toNative()),
    (Formatted v) => mbgl_style_property_value_mbgl_style_expression_formatted_create_constant(nullptr),
    (CirclePitchScale v) => mbgl_style_property_value_mbgl_style_circle_pitch_scale_create_constant(v._toNative()),
    (TextJustify v) => mbgl_style_property_value_mbgl_style_text_justify_create_constant(v._toNative()),
    (HillshadeIlluminationAnchor v) => mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_create_constant(v._toNative()),
    (VariableAnchorOffsetCollection v) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_create_constant(nullptr),
    (TextAnchor v) => mbgl_style_property_value_mbgl_style_text_anchor_create_constant(v._toNative()),
    (CircleTranslateAnchor v) => mbgl_style_property_value_mbgl_style_circle_translate_anchor_create_constant(v._toNative()),
    (TextTransform v) => mbgl_style_property_value_mbgl_style_text_transform_create_constant(v._toNative()),
    (TextTranslateAnchor v) => mbgl_style_property_value_mbgl_style_text_translate_anchor_create_constant(v._toNative()),
    (IconTranslateAnchor v) => mbgl_style_property_value_mbgl_style_icon_translate_anchor_create_constant(v._toNative()),
    ((double, double) v) => mbgl_style_property_value_std_array_float_2_create_constant(std_array_float_2_create(v.$1, v.$2)),
    ((double, double, double, double) v) => mbgl_style_property_value_std_array_float_4_create_constant(std_array_float_4_create(v.$1, v.$2, v.$3, v.$4)),
    (List<TextWritingMode> v) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_create_constant(std_vector_mbgl_style_text_writing_mode_create(v.length, v.toNativeList((e) => e._toNative()))),
    (List<String> v) => mbgl_style_property_value_std_vector_const_char_create_constant(std_vector_const_char_create(v.length, v.toNativeList())),
    (List<double> v) => mbgl_style_property_value_std_vector_float_create_constant(std_vector_float_create(v.length, v.toNativeList())),
    (List<TextVariableAnchor> v) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_create_constant(std_vector_mbgl_style_text_variable_anchor_create(v.length, v.toNativeList((e) => e._toNative()))),
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

  static void destroy<T>(mbgl_property_value_t ptr) => switch(T) {
    const (SymbolZOrder) => mbgl_style_property_value_mbgl_style_symbol_z_order_destroy(ptr),
    const (bool) => mbgl_style_property_value_bool_destroy(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_destroy(ptr),
    const (RasterResampling) => mbgl_style_property_value_mbgl_style_raster_resampling_destroy(ptr),
    const (FillTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_translate_anchor_destroy(ptr),
    const (ResolvedImage) => mbgl_style_property_value_mbgl_style_expression_image_destroy(ptr),
    const (LineCap) => mbgl_style_property_value_mbgl_style_line_cap_destroy(ptr),
    const (LineJoin) => mbgl_style_property_value_mbgl_style_line_join_destroy(ptr),
    const (LineTranslateAnchor) => mbgl_style_property_value_mbgl_style_line_translate_anchor_destroy(ptr),
    const (FillExtrusionTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_destroy(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_destroy(ptr),
    const (SymbolPlacement) => mbgl_style_property_value_mbgl_style_symbol_placement_destroy(ptr),
    const (double) => mbgl_style_property_value_float_destroy(ptr),
    const (IconRotationAlignment) => mbgl_style_property_value_mbgl_style_icon_rotation_alignment_destroy(ptr),
    const (IconTextFit) => mbgl_style_property_value_mbgl_style_icon_text_fit_destroy(ptr),
    const (CirclePitchAlignment) => mbgl_style_property_value_mbgl_style_circle_pitch_alignment_destroy(ptr),
    const (ui.EdgeInsets) => mbgl_style_property_value_mbgl_padding_destroy(ptr),
    const (IconAnchor) => mbgl_style_property_value_mbgl_style_icon_anchor_destroy(ptr),
    const (IconPitchAlignment) => mbgl_style_property_value_mbgl_style_icon_pitch_alignment_destroy(ptr),
    const (TextPitchAlignment) => mbgl_style_property_value_mbgl_style_text_pitch_alignment_destroy(ptr),
    const (TextRotationAlignment) => mbgl_style_property_value_mbgl_style_text_rotation_alignment_destroy(ptr),
    const (Formatted) => mbgl_style_property_value_mbgl_style_expression_formatted_destroy(ptr),
    const (CirclePitchScale) => mbgl_style_property_value_mbgl_style_circle_pitch_scale_destroy(ptr),
    const (TextJustify) => mbgl_style_property_value_mbgl_style_text_justify_destroy(ptr),
    const (HillshadeIlluminationAnchor) => mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_destroy(ptr),
    const (VariableAnchorOffsetCollection) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_destroy(ptr),
    const (TextAnchor) => mbgl_style_property_value_mbgl_style_text_anchor_destroy(ptr),
    const (CircleTranslateAnchor) => mbgl_style_property_value_mbgl_style_circle_translate_anchor_destroy(ptr),
    const (TextTransform) => mbgl_style_property_value_mbgl_style_text_transform_destroy(ptr),
    const (TextTranslateAnchor) => mbgl_style_property_value_mbgl_style_text_translate_anchor_destroy(ptr),
    const (IconTranslateAnchor) => mbgl_style_property_value_mbgl_style_icon_translate_anchor_destroy(ptr),
    const ((double, double)) => mbgl_style_property_value_std_array_float_2_destroy(ptr),
    const ((double, double, double, double)) => mbgl_style_property_value_std_array_float_4_destroy(ptr),
    const (List<TextWritingMode>) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_destroy(ptr),
    const (List<String>) => mbgl_style_property_value_std_vector_const_char_destroy(ptr),
    const (List<double>) => mbgl_style_property_value_std_vector_float_destroy(ptr),
    const (List<TextVariableAnchor>) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_destroy(ptr),
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

  static bool isConstant<T>(mbgl_property_value_t ptr) => switch(T) {
    const (SymbolZOrder) => mbgl_style_property_value_mbgl_style_symbol_z_order_is_constant(ptr),
    const (bool) => mbgl_style_property_value_bool_is_constant(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_constant(ptr),
    const (RasterResampling) => mbgl_style_property_value_mbgl_style_raster_resampling_is_constant(ptr),
    const (FillTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_translate_anchor_is_constant(ptr),
    const (ResolvedImage) => mbgl_style_property_value_mbgl_style_expression_image_is_constant(ptr),
    const (LineCap) => mbgl_style_property_value_mbgl_style_line_cap_is_constant(ptr),
    const (LineJoin) => mbgl_style_property_value_mbgl_style_line_join_is_constant(ptr),
    const (LineTranslateAnchor) => mbgl_style_property_value_mbgl_style_line_translate_anchor_is_constant(ptr),
    const (FillExtrusionTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_is_constant(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_constant(ptr),
    const (SymbolPlacement) => mbgl_style_property_value_mbgl_style_symbol_placement_is_constant(ptr),
    const (double) => mbgl_style_property_value_float_is_constant(ptr),
    const (IconRotationAlignment) => mbgl_style_property_value_mbgl_style_icon_rotation_alignment_is_constant(ptr),
    const (IconTextFit) => mbgl_style_property_value_mbgl_style_icon_text_fit_is_constant(ptr),
    const (CirclePitchAlignment) => mbgl_style_property_value_mbgl_style_circle_pitch_alignment_is_constant(ptr),
    const (ui.EdgeInsets) => mbgl_style_property_value_mbgl_padding_is_constant(ptr),
    const (IconAnchor) => mbgl_style_property_value_mbgl_style_icon_anchor_is_constant(ptr),
    const (IconPitchAlignment) => mbgl_style_property_value_mbgl_style_icon_pitch_alignment_is_constant(ptr),
    const (TextPitchAlignment) => mbgl_style_property_value_mbgl_style_text_pitch_alignment_is_constant(ptr),
    const (TextRotationAlignment) => mbgl_style_property_value_mbgl_style_text_rotation_alignment_is_constant(ptr),
    const (Formatted) => mbgl_style_property_value_mbgl_style_expression_formatted_is_constant(ptr),
    const (CirclePitchScale) => mbgl_style_property_value_mbgl_style_circle_pitch_scale_is_constant(ptr),
    const (TextJustify) => mbgl_style_property_value_mbgl_style_text_justify_is_constant(ptr),
    const (HillshadeIlluminationAnchor) => mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_is_constant(ptr),
    const (VariableAnchorOffsetCollection) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_is_constant(ptr),
    const (TextAnchor) => mbgl_style_property_value_mbgl_style_text_anchor_is_constant(ptr),
    const (CircleTranslateAnchor) => mbgl_style_property_value_mbgl_style_circle_translate_anchor_is_constant(ptr),
    const (TextTransform) => mbgl_style_property_value_mbgl_style_text_transform_is_constant(ptr),
    const (TextTranslateAnchor) => mbgl_style_property_value_mbgl_style_text_translate_anchor_is_constant(ptr),
    const (IconTranslateAnchor) => mbgl_style_property_value_mbgl_style_icon_translate_anchor_is_constant(ptr),
    const ((double, double)) => mbgl_style_property_value_std_array_float_2_is_constant(ptr),
    const ((double, double, double, double)) => mbgl_style_property_value_std_array_float_4_is_constant(ptr),
    const (List<TextWritingMode>) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_is_constant(ptr),
    const (List<String>) => mbgl_style_property_value_std_vector_const_char_is_constant(ptr),
    const (List<double>) => mbgl_style_property_value_std_vector_float_is_constant(ptr),
    const (List<TextVariableAnchor>) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_is_constant(ptr),
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

  static bool isDataDriven<T>(mbgl_property_value_t ptr) => switch(T) {
    const (SymbolZOrder) => mbgl_style_property_value_mbgl_style_symbol_z_order_is_data_driven(ptr),
    const (bool) => mbgl_style_property_value_bool_is_data_driven(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_data_driven(ptr),
    const (RasterResampling) => mbgl_style_property_value_mbgl_style_raster_resampling_is_data_driven(ptr),
    const (FillTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_translate_anchor_is_data_driven(ptr),
    const (ResolvedImage) => mbgl_style_property_value_mbgl_style_expression_image_is_data_driven(ptr),
    const (LineCap) => mbgl_style_property_value_mbgl_style_line_cap_is_data_driven(ptr),
    const (LineJoin) => mbgl_style_property_value_mbgl_style_line_join_is_data_driven(ptr),
    const (LineTranslateAnchor) => mbgl_style_property_value_mbgl_style_line_translate_anchor_is_data_driven(ptr),
    const (FillExtrusionTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_is_data_driven(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_data_driven(ptr),
    const (SymbolPlacement) => mbgl_style_property_value_mbgl_style_symbol_placement_is_data_driven(ptr),
    const (double) => mbgl_style_property_value_float_is_data_driven(ptr),
    const (IconRotationAlignment) => mbgl_style_property_value_mbgl_style_icon_rotation_alignment_is_data_driven(ptr),
    const (IconTextFit) => mbgl_style_property_value_mbgl_style_icon_text_fit_is_data_driven(ptr),
    const (CirclePitchAlignment) => mbgl_style_property_value_mbgl_style_circle_pitch_alignment_is_data_driven(ptr),
    const (ui.EdgeInsets) => mbgl_style_property_value_mbgl_padding_is_data_driven(ptr),
    const (IconAnchor) => mbgl_style_property_value_mbgl_style_icon_anchor_is_data_driven(ptr),
    const (IconPitchAlignment) => mbgl_style_property_value_mbgl_style_icon_pitch_alignment_is_data_driven(ptr),
    const (TextPitchAlignment) => mbgl_style_property_value_mbgl_style_text_pitch_alignment_is_data_driven(ptr),
    const (TextRotationAlignment) => mbgl_style_property_value_mbgl_style_text_rotation_alignment_is_data_driven(ptr),
    const (Formatted) => mbgl_style_property_value_mbgl_style_expression_formatted_is_data_driven(ptr),
    const (CirclePitchScale) => mbgl_style_property_value_mbgl_style_circle_pitch_scale_is_data_driven(ptr),
    const (TextJustify) => mbgl_style_property_value_mbgl_style_text_justify_is_data_driven(ptr),
    const (HillshadeIlluminationAnchor) => mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_is_data_driven(ptr),
    const (VariableAnchorOffsetCollection) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_is_data_driven(ptr),
    const (TextAnchor) => mbgl_style_property_value_mbgl_style_text_anchor_is_data_driven(ptr),
    const (CircleTranslateAnchor) => mbgl_style_property_value_mbgl_style_circle_translate_anchor_is_data_driven(ptr),
    const (TextTransform) => mbgl_style_property_value_mbgl_style_text_transform_is_data_driven(ptr),
    const (TextTranslateAnchor) => mbgl_style_property_value_mbgl_style_text_translate_anchor_is_data_driven(ptr),
    const (IconTranslateAnchor) => mbgl_style_property_value_mbgl_style_icon_translate_anchor_is_data_driven(ptr),
    const ((double, double)) => mbgl_style_property_value_std_array_float_2_is_data_driven(ptr),
    const ((double, double, double, double)) => mbgl_style_property_value_std_array_float_4_is_data_driven(ptr),
    const (List<TextWritingMode>) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_is_data_driven(ptr),
    const (List<String>) => mbgl_style_property_value_std_vector_const_char_is_data_driven(ptr),
    const (List<double>) => mbgl_style_property_value_std_vector_float_is_data_driven(ptr),
    const (List<TextVariableAnchor>) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_is_data_driven(ptr),
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

  static bool isExpression<T>(mbgl_property_value_t ptr) => switch(T) {
    const (SymbolZOrder) => mbgl_style_property_value_mbgl_style_symbol_z_order_is_expression(ptr),
    const (bool) => mbgl_style_property_value_bool_is_expression(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_expression(ptr),
    const (RasterResampling) => mbgl_style_property_value_mbgl_style_raster_resampling_is_expression(ptr),
    const (FillTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_translate_anchor_is_expression(ptr),
    const (ResolvedImage) => mbgl_style_property_value_mbgl_style_expression_image_is_expression(ptr),
    const (LineCap) => mbgl_style_property_value_mbgl_style_line_cap_is_expression(ptr),
    const (LineJoin) => mbgl_style_property_value_mbgl_style_line_join_is_expression(ptr),
    const (LineTranslateAnchor) => mbgl_style_property_value_mbgl_style_line_translate_anchor_is_expression(ptr),
    const (FillExtrusionTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_is_expression(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_expression(ptr),
    const (SymbolPlacement) => mbgl_style_property_value_mbgl_style_symbol_placement_is_expression(ptr),
    const (double) => mbgl_style_property_value_float_is_expression(ptr),
    const (IconRotationAlignment) => mbgl_style_property_value_mbgl_style_icon_rotation_alignment_is_expression(ptr),
    const (IconTextFit) => mbgl_style_property_value_mbgl_style_icon_text_fit_is_expression(ptr),
    const (CirclePitchAlignment) => mbgl_style_property_value_mbgl_style_circle_pitch_alignment_is_expression(ptr),
    const (ui.EdgeInsets) => mbgl_style_property_value_mbgl_padding_is_expression(ptr),
    const (IconAnchor) => mbgl_style_property_value_mbgl_style_icon_anchor_is_expression(ptr),
    const (IconPitchAlignment) => mbgl_style_property_value_mbgl_style_icon_pitch_alignment_is_expression(ptr),
    const (TextPitchAlignment) => mbgl_style_property_value_mbgl_style_text_pitch_alignment_is_expression(ptr),
    const (TextRotationAlignment) => mbgl_style_property_value_mbgl_style_text_rotation_alignment_is_expression(ptr),
    const (Formatted) => mbgl_style_property_value_mbgl_style_expression_formatted_is_expression(ptr),
    const (CirclePitchScale) => mbgl_style_property_value_mbgl_style_circle_pitch_scale_is_expression(ptr),
    const (TextJustify) => mbgl_style_property_value_mbgl_style_text_justify_is_expression(ptr),
    const (HillshadeIlluminationAnchor) => mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_is_expression(ptr),
    const (VariableAnchorOffsetCollection) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_is_expression(ptr),
    const (TextAnchor) => mbgl_style_property_value_mbgl_style_text_anchor_is_expression(ptr),
    const (CircleTranslateAnchor) => mbgl_style_property_value_mbgl_style_circle_translate_anchor_is_expression(ptr),
    const (TextTransform) => mbgl_style_property_value_mbgl_style_text_transform_is_expression(ptr),
    const (TextTranslateAnchor) => mbgl_style_property_value_mbgl_style_text_translate_anchor_is_expression(ptr),
    const (IconTranslateAnchor) => mbgl_style_property_value_mbgl_style_icon_translate_anchor_is_expression(ptr),
    const ((double, double)) => mbgl_style_property_value_std_array_float_2_is_expression(ptr),
    const ((double, double, double, double)) => mbgl_style_property_value_std_array_float_4_is_expression(ptr),
    const (List<TextWritingMode>) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_is_expression(ptr),
    const (List<String>) => mbgl_style_property_value_std_vector_const_char_is_expression(ptr),
    const (List<double>) => mbgl_style_property_value_std_vector_float_is_expression(ptr),
    const (List<TextVariableAnchor>) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_is_expression(ptr),
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

  static bool isUndefined<T>(mbgl_property_value_t ptr) => switch(T) {
    const (SymbolZOrder) => mbgl_style_property_value_mbgl_style_symbol_z_order_is_undefined(ptr),
    const (bool) => mbgl_style_property_value_bool_is_undefined(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_undefined(ptr),
    const (RasterResampling) => mbgl_style_property_value_mbgl_style_raster_resampling_is_undefined(ptr),
    const (FillTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_translate_anchor_is_undefined(ptr),
    const (ResolvedImage) => mbgl_style_property_value_mbgl_style_expression_image_is_undefined(ptr),
    const (LineCap) => mbgl_style_property_value_mbgl_style_line_cap_is_undefined(ptr),
    const (LineJoin) => mbgl_style_property_value_mbgl_style_line_join_is_undefined(ptr),
    const (LineTranslateAnchor) => mbgl_style_property_value_mbgl_style_line_translate_anchor_is_undefined(ptr),
    const (FillExtrusionTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_is_undefined(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_undefined(ptr),
    const (SymbolPlacement) => mbgl_style_property_value_mbgl_style_symbol_placement_is_undefined(ptr),
    const (double) => mbgl_style_property_value_float_is_undefined(ptr),
    const (IconRotationAlignment) => mbgl_style_property_value_mbgl_style_icon_rotation_alignment_is_undefined(ptr),
    const (IconTextFit) => mbgl_style_property_value_mbgl_style_icon_text_fit_is_undefined(ptr),
    const (CirclePitchAlignment) => mbgl_style_property_value_mbgl_style_circle_pitch_alignment_is_undefined(ptr),
    const (ui.EdgeInsets) => mbgl_style_property_value_mbgl_padding_is_undefined(ptr),
    const (IconAnchor) => mbgl_style_property_value_mbgl_style_icon_anchor_is_undefined(ptr),
    const (IconPitchAlignment) => mbgl_style_property_value_mbgl_style_icon_pitch_alignment_is_undefined(ptr),
    const (TextPitchAlignment) => mbgl_style_property_value_mbgl_style_text_pitch_alignment_is_undefined(ptr),
    const (TextRotationAlignment) => mbgl_style_property_value_mbgl_style_text_rotation_alignment_is_undefined(ptr),
    const (Formatted) => mbgl_style_property_value_mbgl_style_expression_formatted_is_undefined(ptr),
    const (CirclePitchScale) => mbgl_style_property_value_mbgl_style_circle_pitch_scale_is_undefined(ptr),
    const (TextJustify) => mbgl_style_property_value_mbgl_style_text_justify_is_undefined(ptr),
    const (HillshadeIlluminationAnchor) => mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_is_undefined(ptr),
    const (VariableAnchorOffsetCollection) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_is_undefined(ptr),
    const (TextAnchor) => mbgl_style_property_value_mbgl_style_text_anchor_is_undefined(ptr),
    const (CircleTranslateAnchor) => mbgl_style_property_value_mbgl_style_circle_translate_anchor_is_undefined(ptr),
    const (TextTransform) => mbgl_style_property_value_mbgl_style_text_transform_is_undefined(ptr),
    const (TextTranslateAnchor) => mbgl_style_property_value_mbgl_style_text_translate_anchor_is_undefined(ptr),
    const (IconTranslateAnchor) => mbgl_style_property_value_mbgl_style_icon_translate_anchor_is_undefined(ptr),
    const ((double, double)) => mbgl_style_property_value_std_array_float_2_is_undefined(ptr),
    const ((double, double, double, double)) => mbgl_style_property_value_std_array_float_4_is_undefined(ptr),
    const (List<TextWritingMode>) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_is_undefined(ptr),
    const (List<String>) => mbgl_style_property_value_std_vector_const_char_is_undefined(ptr),
    const (List<double>) => mbgl_style_property_value_std_vector_float_is_undefined(ptr),
    const (List<TextVariableAnchor>) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_is_undefined(ptr),
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

  static bool isZoomConstant<T>(mbgl_property_value_t ptr) => switch(T) {
    const (SymbolZOrder) => mbgl_style_property_value_mbgl_style_symbol_z_order_is_zoom_constant(ptr),
    const (bool) => mbgl_style_property_value_bool_is_zoom_constant(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_zoom_constant(ptr),
    const (RasterResampling) => mbgl_style_property_value_mbgl_style_raster_resampling_is_zoom_constant(ptr),
    const (FillTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_translate_anchor_is_zoom_constant(ptr),
    const (ResolvedImage) => mbgl_style_property_value_mbgl_style_expression_image_is_zoom_constant(ptr),
    const (LineCap) => mbgl_style_property_value_mbgl_style_line_cap_is_zoom_constant(ptr),
    const (LineJoin) => mbgl_style_property_value_mbgl_style_line_join_is_zoom_constant(ptr),
    const (LineTranslateAnchor) => mbgl_style_property_value_mbgl_style_line_translate_anchor_is_zoom_constant(ptr),
    const (FillExtrusionTranslateAnchor) => mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_is_zoom_constant(ptr),
    const (ui.Color) => mbgl_style_property_value_mbgl_color_is_zoom_constant(ptr),
    const (SymbolPlacement) => mbgl_style_property_value_mbgl_style_symbol_placement_is_zoom_constant(ptr),
    const (double) => mbgl_style_property_value_float_is_zoom_constant(ptr),
    const (IconRotationAlignment) => mbgl_style_property_value_mbgl_style_icon_rotation_alignment_is_zoom_constant(ptr),
    const (IconTextFit) => mbgl_style_property_value_mbgl_style_icon_text_fit_is_zoom_constant(ptr),
    const (CirclePitchAlignment) => mbgl_style_property_value_mbgl_style_circle_pitch_alignment_is_zoom_constant(ptr),
    const (ui.EdgeInsets) => mbgl_style_property_value_mbgl_padding_is_zoom_constant(ptr),
    const (IconAnchor) => mbgl_style_property_value_mbgl_style_icon_anchor_is_zoom_constant(ptr),
    const (IconPitchAlignment) => mbgl_style_property_value_mbgl_style_icon_pitch_alignment_is_zoom_constant(ptr),
    const (TextPitchAlignment) => mbgl_style_property_value_mbgl_style_text_pitch_alignment_is_zoom_constant(ptr),
    const (TextRotationAlignment) => mbgl_style_property_value_mbgl_style_text_rotation_alignment_is_zoom_constant(ptr),
    const (Formatted) => mbgl_style_property_value_mbgl_style_expression_formatted_is_zoom_constant(ptr),
    const (CirclePitchScale) => mbgl_style_property_value_mbgl_style_circle_pitch_scale_is_zoom_constant(ptr),
    const (TextJustify) => mbgl_style_property_value_mbgl_style_text_justify_is_zoom_constant(ptr),
    const (HillshadeIlluminationAnchor) => mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_is_zoom_constant(ptr),
    const (VariableAnchorOffsetCollection) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_is_zoom_constant(ptr),
    const (TextAnchor) => mbgl_style_property_value_mbgl_style_text_anchor_is_zoom_constant(ptr),
    const (CircleTranslateAnchor) => mbgl_style_property_value_mbgl_style_circle_translate_anchor_is_zoom_constant(ptr),
    const (TextTransform) => mbgl_style_property_value_mbgl_style_text_transform_is_zoom_constant(ptr),
    const (TextTranslateAnchor) => mbgl_style_property_value_mbgl_style_text_translate_anchor_is_zoom_constant(ptr),
    const (IconTranslateAnchor) => mbgl_style_property_value_mbgl_style_icon_translate_anchor_is_zoom_constant(ptr),
    const ((double, double)) => mbgl_style_property_value_std_array_float_2_is_zoom_constant(ptr),
    const ((double, double, double, double)) => mbgl_style_property_value_std_array_float_4_is_zoom_constant(ptr),
    const (List<TextWritingMode>) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_is_zoom_constant(ptr),
    const (List<String>) => mbgl_style_property_value_std_vector_const_char_is_zoom_constant(ptr),
    const (List<double>) => mbgl_style_property_value_std_vector_float_is_zoom_constant(ptr),
    const (List<TextVariableAnchor>) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_is_zoom_constant(ptr),
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

  static T asConstant<T>(mbgl_property_value_t ptr) => switch(T) {
    const (SymbolZOrder) => SymbolZOrder._fromNative(mbgl_style_property_value_mbgl_style_symbol_z_order_as_constant(ptr)) as T,
    const (bool) => mbgl_style_property_value_bool_as_constant(ptr) as T,
    const (ui.Color) => mbgl_style_property_value_mbgl_color_as_constant(ptr).toDartColor() as T,
    const (RasterResampling) => RasterResampling._fromNative(mbgl_style_property_value_mbgl_style_raster_resampling_as_constant(ptr)) as T,
    const (FillTranslateAnchor) => FillTranslateAnchor._fromNative(mbgl_style_property_value_mbgl_style_fill_translate_anchor_as_constant(ptr)) as T,
    const (ResolvedImage) => mbgl_style_property_value_mbgl_style_expression_image_as_constant(ptr) as T,
    const (LineCap) => LineCap._fromNative(mbgl_style_property_value_mbgl_style_line_cap_as_constant(ptr)) as T,
    const (LineJoin) => LineJoin._fromNative(mbgl_style_property_value_mbgl_style_line_join_as_constant(ptr)) as T,
    const (LineTranslateAnchor) => LineTranslateAnchor._fromNative(mbgl_style_property_value_mbgl_style_line_translate_anchor_as_constant(ptr)) as T,
    const (FillExtrusionTranslateAnchor) => FillExtrusionTranslateAnchor._fromNative(mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_as_constant(ptr)) as T,
    const (ui.Color) => mbgl_style_property_value_mbgl_color_as_constant(ptr).toDartColor() as T,
    const (SymbolPlacement) => SymbolPlacement._fromNative(mbgl_style_property_value_mbgl_style_symbol_placement_as_constant(ptr)) as T,
    const (double) => mbgl_style_property_value_float_as_constant(ptr) as T,
    const (IconRotationAlignment) => IconRotationAlignment._fromNative(mbgl_style_property_value_mbgl_style_icon_rotation_alignment_as_constant(ptr)) as T,
    const (IconTextFit) => IconTextFit._fromNative(mbgl_style_property_value_mbgl_style_icon_text_fit_as_constant(ptr)) as T,
    const (CirclePitchAlignment) => CirclePitchAlignment._fromNative(mbgl_style_property_value_mbgl_style_circle_pitch_alignment_as_constant(ptr)) as T,
    const (ui.EdgeInsets) => mbgl_style_property_value_mbgl_padding_as_constant(ptr).toDartPadding() as T,
    const (IconAnchor) => IconAnchor._fromNative(mbgl_style_property_value_mbgl_style_icon_anchor_as_constant(ptr)) as T,
    const (IconPitchAlignment) => IconPitchAlignment._fromNative(mbgl_style_property_value_mbgl_style_icon_pitch_alignment_as_constant(ptr)) as T,
    const (TextPitchAlignment) => TextPitchAlignment._fromNative(mbgl_style_property_value_mbgl_style_text_pitch_alignment_as_constant(ptr)) as T,
    const (TextRotationAlignment) => TextRotationAlignment._fromNative(mbgl_style_property_value_mbgl_style_text_rotation_alignment_as_constant(ptr)) as T,
    const (Formatted) => mbgl_style_property_value_mbgl_style_expression_formatted_as_constant(ptr) as T,
    const (CirclePitchScale) => CirclePitchScale._fromNative(mbgl_style_property_value_mbgl_style_circle_pitch_scale_as_constant(ptr)) as T,
    const (TextJustify) => TextJustify._fromNative(mbgl_style_property_value_mbgl_style_text_justify_as_constant(ptr)) as T,
    const (HillshadeIlluminationAnchor) => HillshadeIlluminationAnchor._fromNative(mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_as_constant(ptr)) as T,
    const (VariableAnchorOffsetCollection) => mbgl_style_property_value_mbgl_variable_anchor_offset_collection_as_constant(ptr) as T,
    const (TextAnchor) => TextAnchor._fromNative(mbgl_style_property_value_mbgl_style_text_anchor_as_constant(ptr)) as T,
    const (CircleTranslateAnchor) => CircleTranslateAnchor._fromNative(mbgl_style_property_value_mbgl_style_circle_translate_anchor_as_constant(ptr)) as T,
    const (TextTransform) => TextTransform._fromNative(mbgl_style_property_value_mbgl_style_text_transform_as_constant(ptr)) as T,
    const (TextTranslateAnchor) => TextTranslateAnchor._fromNative(mbgl_style_property_value_mbgl_style_text_translate_anchor_as_constant(ptr)) as T,
    const (IconTranslateAnchor) => IconTranslateAnchor._fromNative(mbgl_style_property_value_mbgl_style_icon_translate_anchor_as_constant(ptr)) as T,
    const ((double, double)) => (std_array_float_2_get_at(mbgl_style_property_value_std_array_float_2_as_constant(ptr), 0), std_array_float_2_get_at(mbgl_style_property_value_std_array_float_2_as_constant(ptr), 1)) as T,
    const ((double, double, double, double)) => (std_array_float_4_get_at(mbgl_style_property_value_std_array_float_4_as_constant(ptr), 0), std_array_float_4_get_at(mbgl_style_property_value_std_array_float_4_as_constant(ptr), 1), std_array_float_4_get_at(mbgl_style_property_value_std_array_float_4_as_constant(ptr), 2), std_array_float_4_get_at(mbgl_style_property_value_std_array_float_4_as_constant(ptr), 3)) as T,
    const (List<TextWritingMode>) => mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_as_constant(ptr).toDartList(std_vector_mbgl_style_text_writing_mode_length, std_vector_mbgl_style_text_writing_mode_get_at, (n) => TextWritingMode._fromNative(n)) as T,
    const (List<String>) => mbgl_style_property_value_std_vector_const_char_as_constant(ptr).toDartList(std_vector_const_char_length, std_vector_const_char_get_at, (n) => n) as T,
    const (List<double>) => mbgl_style_property_value_std_vector_float_as_constant(ptr).toDartList(std_vector_float_length, std_vector_float_get_at, (n) => n) as T,
    const (List<TextVariableAnchor>) => mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_as_constant(ptr).toDartList(std_vector_mbgl_style_text_variable_anchor_length, std_vector_mbgl_style_text_variable_anchor_get_at, (n) => TextVariableAnchor._fromNative(n)) as T,
    _ => throw UnimplementedError("Unsupported property value type: $T"),
  };

}
