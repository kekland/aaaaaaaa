// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated via tool/generate_style.dart

#include "flmln_style_gen.h"

#include <mbgl/style/layer.hpp>
#include <mbgl/style/types.hpp>
#include <mbgl/style/layers/fill_layer.hpp>
#include <mbgl/style/layers/fill_extrusion_layer.hpp>
#include <mbgl/style/layers/line_layer.hpp>
#include <mbgl/style/layers/circle_layer.hpp>
#include <mbgl/style/layers/symbol_layer.hpp>
#include <mbgl/style/layers/raster_layer.hpp>
#include <mbgl/style/layers/heatmap_layer.hpp>
#include <mbgl/style/layers/background_layer.hpp>
#include <mbgl/style/layers/hillshade_layer.hpp>

using namespace mbgl;

MBGL_STYLE_VISIBILITY visibility_to_c(style::VisibilityType value) {
  switch (value) {
    case style::VisibilityType::Visible: return MBGL_STYLE_VISIBILITY_VISIBLE;
    case style::VisibilityType::None: return MBGL_STYLE_VISIBILITY_NONE;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::VisibilityType visibility_to_mbgl(MBGL_STYLE_VISIBILITY value) {
  switch (value) {
    case MBGL_STYLE_VISIBILITY_VISIBLE: return style::VisibilityType::Visible;
    case MBGL_STYLE_VISIBILITY_NONE: return style::VisibilityType::None;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_FILL_TRANSLATE_ANCHOR fill_translate_anchor_to_c(style::TranslateAnchorType value) {
  switch (value) {
    case style::TranslateAnchorType::Map: return MBGL_STYLE_FILL_TRANSLATE_ANCHOR_MAP;
    case style::TranslateAnchorType::Viewport: return MBGL_STYLE_FILL_TRANSLATE_ANCHOR_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TranslateAnchorType fill_translate_anchor_to_mbgl(MBGL_STYLE_FILL_TRANSLATE_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_FILL_TRANSLATE_ANCHOR_MAP: return style::TranslateAnchorType::Map;
    case MBGL_STYLE_FILL_TRANSLATE_ANCHOR_VIEWPORT: return style::TranslateAnchorType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_LINE_CAP line_cap_to_c(style::LineCapType value) {
  switch (value) {
    case style::LineCapType::Butt: return MBGL_STYLE_LINE_CAP_BUTT;
    case style::LineCapType::Round: return MBGL_STYLE_LINE_CAP_ROUND;
    case style::LineCapType::Square: return MBGL_STYLE_LINE_CAP_SQUARE;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::LineCapType line_cap_to_mbgl(MBGL_STYLE_LINE_CAP value) {
  switch (value) {
    case MBGL_STYLE_LINE_CAP_BUTT: return style::LineCapType::Butt;
    case MBGL_STYLE_LINE_CAP_ROUND: return style::LineCapType::Round;
    case MBGL_STYLE_LINE_CAP_SQUARE: return style::LineCapType::Square;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_LINE_JOIN line_join_to_c(style::LineJoinType value) {
  switch (value) {
    case style::LineJoinType::Bevel: return MBGL_STYLE_LINE_JOIN_BEVEL;
    case style::LineJoinType::Round: return MBGL_STYLE_LINE_JOIN_ROUND;
    case style::LineJoinType::Miter: return MBGL_STYLE_LINE_JOIN_MITER;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::LineJoinType line_join_to_mbgl(MBGL_STYLE_LINE_JOIN value) {
  switch (value) {
    case MBGL_STYLE_LINE_JOIN_BEVEL: return style::LineJoinType::Bevel;
    case MBGL_STYLE_LINE_JOIN_ROUND: return style::LineJoinType::Round;
    case MBGL_STYLE_LINE_JOIN_MITER: return style::LineJoinType::Miter;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_LINE_TRANSLATE_ANCHOR line_translate_anchor_to_c(style::TranslateAnchorType value) {
  switch (value) {
    case style::TranslateAnchorType::Map: return MBGL_STYLE_LINE_TRANSLATE_ANCHOR_MAP;
    case style::TranslateAnchorType::Viewport: return MBGL_STYLE_LINE_TRANSLATE_ANCHOR_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TranslateAnchorType line_translate_anchor_to_mbgl(MBGL_STYLE_LINE_TRANSLATE_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_LINE_TRANSLATE_ANCHOR_MAP: return style::TranslateAnchorType::Map;
    case MBGL_STYLE_LINE_TRANSLATE_ANCHOR_VIEWPORT: return style::TranslateAnchorType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_SYMBOL_PLACEMENT symbol_placement_to_c(style::SymbolPlacementType value) {
  switch (value) {
    case style::SymbolPlacementType::Point: return MBGL_STYLE_SYMBOL_PLACEMENT_POINT;
    case style::SymbolPlacementType::Line: return MBGL_STYLE_SYMBOL_PLACEMENT_LINE;
    case style::SymbolPlacementType::LineCenter: return MBGL_STYLE_SYMBOL_PLACEMENT_LINE_CENTER;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::SymbolPlacementType symbol_placement_to_mbgl(MBGL_STYLE_SYMBOL_PLACEMENT value) {
  switch (value) {
    case MBGL_STYLE_SYMBOL_PLACEMENT_POINT: return style::SymbolPlacementType::Point;
    case MBGL_STYLE_SYMBOL_PLACEMENT_LINE: return style::SymbolPlacementType::Line;
    case MBGL_STYLE_SYMBOL_PLACEMENT_LINE_CENTER: return style::SymbolPlacementType::LineCenter;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_SYMBOL_Z_ORDER symbol_z_order_to_c(style::SymbolZOrderType value) {
  switch (value) {
    case style::SymbolZOrderType::Auto: return MBGL_STYLE_SYMBOL_Z_ORDER_AUTO;
    case style::SymbolZOrderType::ViewportY: return MBGL_STYLE_SYMBOL_Z_ORDER_VIEWPORT_Y;
    case style::SymbolZOrderType::Source: return MBGL_STYLE_SYMBOL_Z_ORDER_SOURCE;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::SymbolZOrderType symbol_z_order_to_mbgl(MBGL_STYLE_SYMBOL_Z_ORDER value) {
  switch (value) {
    case MBGL_STYLE_SYMBOL_Z_ORDER_AUTO: return style::SymbolZOrderType::Auto;
    case MBGL_STYLE_SYMBOL_Z_ORDER_VIEWPORT_Y: return style::SymbolZOrderType::ViewportY;
    case MBGL_STYLE_SYMBOL_Z_ORDER_SOURCE: return style::SymbolZOrderType::Source;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_ICON_ROTATION_ALIGNMENT icon_rotation_alignment_to_c(style::AlignmentType value) {
  switch (value) {
    case style::AlignmentType::Map: return MBGL_STYLE_ICON_ROTATION_ALIGNMENT_MAP;
    case style::AlignmentType::Viewport: return MBGL_STYLE_ICON_ROTATION_ALIGNMENT_VIEWPORT;
    case style::AlignmentType::Auto: return MBGL_STYLE_ICON_ROTATION_ALIGNMENT_AUTO;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::AlignmentType icon_rotation_alignment_to_mbgl(MBGL_STYLE_ICON_ROTATION_ALIGNMENT value) {
  switch (value) {
    case MBGL_STYLE_ICON_ROTATION_ALIGNMENT_MAP: return style::AlignmentType::Map;
    case MBGL_STYLE_ICON_ROTATION_ALIGNMENT_VIEWPORT: return style::AlignmentType::Viewport;
    case MBGL_STYLE_ICON_ROTATION_ALIGNMENT_AUTO: return style::AlignmentType::Auto;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_ICON_TEXT_FIT icon_text_fit_to_c(style::IconTextFitType value) {
  switch (value) {
    case style::IconTextFitType::None: return MBGL_STYLE_ICON_TEXT_FIT_NONE;
    case style::IconTextFitType::Width: return MBGL_STYLE_ICON_TEXT_FIT_WIDTH;
    case style::IconTextFitType::Height: return MBGL_STYLE_ICON_TEXT_FIT_HEIGHT;
    case style::IconTextFitType::Both: return MBGL_STYLE_ICON_TEXT_FIT_BOTH;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::IconTextFitType icon_text_fit_to_mbgl(MBGL_STYLE_ICON_TEXT_FIT value) {
  switch (value) {
    case MBGL_STYLE_ICON_TEXT_FIT_NONE: return style::IconTextFitType::None;
    case MBGL_STYLE_ICON_TEXT_FIT_WIDTH: return style::IconTextFitType::Width;
    case MBGL_STYLE_ICON_TEXT_FIT_HEIGHT: return style::IconTextFitType::Height;
    case MBGL_STYLE_ICON_TEXT_FIT_BOTH: return style::IconTextFitType::Both;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_ICON_ANCHOR icon_anchor_to_c(style::SymbolAnchorType value) {
  switch (value) {
    case style::SymbolAnchorType::Center: return MBGL_STYLE_ICON_ANCHOR_CENTER;
    case style::SymbolAnchorType::Left: return MBGL_STYLE_ICON_ANCHOR_LEFT;
    case style::SymbolAnchorType::Right: return MBGL_STYLE_ICON_ANCHOR_RIGHT;
    case style::SymbolAnchorType::Top: return MBGL_STYLE_ICON_ANCHOR_TOP;
    case style::SymbolAnchorType::Bottom: return MBGL_STYLE_ICON_ANCHOR_BOTTOM;
    case style::SymbolAnchorType::TopLeft: return MBGL_STYLE_ICON_ANCHOR_TOP_LEFT;
    case style::SymbolAnchorType::TopRight: return MBGL_STYLE_ICON_ANCHOR_TOP_RIGHT;
    case style::SymbolAnchorType::BottomLeft: return MBGL_STYLE_ICON_ANCHOR_BOTTOM_LEFT;
    case style::SymbolAnchorType::BottomRight: return MBGL_STYLE_ICON_ANCHOR_BOTTOM_RIGHT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::SymbolAnchorType icon_anchor_to_mbgl(MBGL_STYLE_ICON_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_ICON_ANCHOR_CENTER: return style::SymbolAnchorType::Center;
    case MBGL_STYLE_ICON_ANCHOR_LEFT: return style::SymbolAnchorType::Left;
    case MBGL_STYLE_ICON_ANCHOR_RIGHT: return style::SymbolAnchorType::Right;
    case MBGL_STYLE_ICON_ANCHOR_TOP: return style::SymbolAnchorType::Top;
    case MBGL_STYLE_ICON_ANCHOR_BOTTOM: return style::SymbolAnchorType::Bottom;
    case MBGL_STYLE_ICON_ANCHOR_TOP_LEFT: return style::SymbolAnchorType::TopLeft;
    case MBGL_STYLE_ICON_ANCHOR_TOP_RIGHT: return style::SymbolAnchorType::TopRight;
    case MBGL_STYLE_ICON_ANCHOR_BOTTOM_LEFT: return style::SymbolAnchorType::BottomLeft;
    case MBGL_STYLE_ICON_ANCHOR_BOTTOM_RIGHT: return style::SymbolAnchorType::BottomRight;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_ICON_PITCH_ALIGNMENT icon_pitch_alignment_to_c(style::AlignmentType value) {
  switch (value) {
    case style::AlignmentType::Map: return MBGL_STYLE_ICON_PITCH_ALIGNMENT_MAP;
    case style::AlignmentType::Viewport: return MBGL_STYLE_ICON_PITCH_ALIGNMENT_VIEWPORT;
    case style::AlignmentType::Auto: return MBGL_STYLE_ICON_PITCH_ALIGNMENT_AUTO;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::AlignmentType icon_pitch_alignment_to_mbgl(MBGL_STYLE_ICON_PITCH_ALIGNMENT value) {
  switch (value) {
    case MBGL_STYLE_ICON_PITCH_ALIGNMENT_MAP: return style::AlignmentType::Map;
    case MBGL_STYLE_ICON_PITCH_ALIGNMENT_VIEWPORT: return style::AlignmentType::Viewport;
    case MBGL_STYLE_ICON_PITCH_ALIGNMENT_AUTO: return style::AlignmentType::Auto;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_PITCH_ALIGNMENT text_pitch_alignment_to_c(style::AlignmentType value) {
  switch (value) {
    case style::AlignmentType::Map: return MBGL_STYLE_TEXT_PITCH_ALIGNMENT_MAP;
    case style::AlignmentType::Viewport: return MBGL_STYLE_TEXT_PITCH_ALIGNMENT_VIEWPORT;
    case style::AlignmentType::Auto: return MBGL_STYLE_TEXT_PITCH_ALIGNMENT_AUTO;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::AlignmentType text_pitch_alignment_to_mbgl(MBGL_STYLE_TEXT_PITCH_ALIGNMENT value) {
  switch (value) {
    case MBGL_STYLE_TEXT_PITCH_ALIGNMENT_MAP: return style::AlignmentType::Map;
    case MBGL_STYLE_TEXT_PITCH_ALIGNMENT_VIEWPORT: return style::AlignmentType::Viewport;
    case MBGL_STYLE_TEXT_PITCH_ALIGNMENT_AUTO: return style::AlignmentType::Auto;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_ROTATION_ALIGNMENT text_rotation_alignment_to_c(style::AlignmentType value) {
  switch (value) {
    case style::AlignmentType::Map: return MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_MAP;
    case style::AlignmentType::Viewport: return MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_VIEWPORT;
    case style::AlignmentType::Auto: return MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_AUTO;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::AlignmentType text_rotation_alignment_to_mbgl(MBGL_STYLE_TEXT_ROTATION_ALIGNMENT value) {
  switch (value) {
    case MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_MAP: return style::AlignmentType::Map;
    case MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_VIEWPORT: return style::AlignmentType::Viewport;
    case MBGL_STYLE_TEXT_ROTATION_ALIGNMENT_AUTO: return style::AlignmentType::Auto;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_JUSTIFY text_justify_to_c(style::TextJustifyType value) {
  switch (value) {
    case style::TextJustifyType::Auto: return MBGL_STYLE_TEXT_JUSTIFY_AUTO;
    case style::TextJustifyType::Left: return MBGL_STYLE_TEXT_JUSTIFY_LEFT;
    case style::TextJustifyType::Center: return MBGL_STYLE_TEXT_JUSTIFY_CENTER;
    case style::TextJustifyType::Right: return MBGL_STYLE_TEXT_JUSTIFY_RIGHT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TextJustifyType text_justify_to_mbgl(MBGL_STYLE_TEXT_JUSTIFY value) {
  switch (value) {
    case MBGL_STYLE_TEXT_JUSTIFY_AUTO: return style::TextJustifyType::Auto;
    case MBGL_STYLE_TEXT_JUSTIFY_LEFT: return style::TextJustifyType::Left;
    case MBGL_STYLE_TEXT_JUSTIFY_CENTER: return style::TextJustifyType::Center;
    case MBGL_STYLE_TEXT_JUSTIFY_RIGHT: return style::TextJustifyType::Right;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_VARIABLE_ANCHOR text_variable_anchor_to_c(style::TextVariableAnchorType value) {
  switch (value) {
    case style::TextVariableAnchorType::Center: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_CENTER;
    case style::TextVariableAnchorType::Left: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_LEFT;
    case style::TextVariableAnchorType::Right: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_RIGHT;
    case style::TextVariableAnchorType::Top: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP;
    case style::TextVariableAnchorType::Bottom: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM;
    case style::TextVariableAnchorType::TopLeft: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_LEFT;
    case style::TextVariableAnchorType::TopRight: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_RIGHT;
    case style::TextVariableAnchorType::BottomLeft: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_LEFT;
    case style::TextVariableAnchorType::BottomRight: return MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_RIGHT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TextVariableAnchorType text_variable_anchor_to_mbgl(MBGL_STYLE_TEXT_VARIABLE_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_CENTER: return style::TextVariableAnchorType::Center;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_LEFT: return style::TextVariableAnchorType::Left;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_RIGHT: return style::TextVariableAnchorType::Right;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP: return style::TextVariableAnchorType::Top;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM: return style::TextVariableAnchorType::Bottom;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_LEFT: return style::TextVariableAnchorType::TopLeft;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_TOP_RIGHT: return style::TextVariableAnchorType::TopRight;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_LEFT: return style::TextVariableAnchorType::BottomLeft;
    case MBGL_STYLE_TEXT_VARIABLE_ANCHOR_BOTTOM_RIGHT: return style::TextVariableAnchorType::BottomRight;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_ANCHOR text_anchor_to_c(style::SymbolAnchorType value) {
  switch (value) {
    case style::SymbolAnchorType::Center: return MBGL_STYLE_TEXT_ANCHOR_CENTER;
    case style::SymbolAnchorType::Left: return MBGL_STYLE_TEXT_ANCHOR_LEFT;
    case style::SymbolAnchorType::Right: return MBGL_STYLE_TEXT_ANCHOR_RIGHT;
    case style::SymbolAnchorType::Top: return MBGL_STYLE_TEXT_ANCHOR_TOP;
    case style::SymbolAnchorType::Bottom: return MBGL_STYLE_TEXT_ANCHOR_BOTTOM;
    case style::SymbolAnchorType::TopLeft: return MBGL_STYLE_TEXT_ANCHOR_TOP_LEFT;
    case style::SymbolAnchorType::TopRight: return MBGL_STYLE_TEXT_ANCHOR_TOP_RIGHT;
    case style::SymbolAnchorType::BottomLeft: return MBGL_STYLE_TEXT_ANCHOR_BOTTOM_LEFT;
    case style::SymbolAnchorType::BottomRight: return MBGL_STYLE_TEXT_ANCHOR_BOTTOM_RIGHT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::SymbolAnchorType text_anchor_to_mbgl(MBGL_STYLE_TEXT_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_TEXT_ANCHOR_CENTER: return style::SymbolAnchorType::Center;
    case MBGL_STYLE_TEXT_ANCHOR_LEFT: return style::SymbolAnchorType::Left;
    case MBGL_STYLE_TEXT_ANCHOR_RIGHT: return style::SymbolAnchorType::Right;
    case MBGL_STYLE_TEXT_ANCHOR_TOP: return style::SymbolAnchorType::Top;
    case MBGL_STYLE_TEXT_ANCHOR_BOTTOM: return style::SymbolAnchorType::Bottom;
    case MBGL_STYLE_TEXT_ANCHOR_TOP_LEFT: return style::SymbolAnchorType::TopLeft;
    case MBGL_STYLE_TEXT_ANCHOR_TOP_RIGHT: return style::SymbolAnchorType::TopRight;
    case MBGL_STYLE_TEXT_ANCHOR_BOTTOM_LEFT: return style::SymbolAnchorType::BottomLeft;
    case MBGL_STYLE_TEXT_ANCHOR_BOTTOM_RIGHT: return style::SymbolAnchorType::BottomRight;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_WRITING_MODE text_writing_mode_to_c(style::TextWritingModeType value) {
  switch (value) {
    case style::TextWritingModeType::Horizontal: return MBGL_STYLE_TEXT_WRITING_MODE_HORIZONTAL;
    case style::TextWritingModeType::Vertical: return MBGL_STYLE_TEXT_WRITING_MODE_VERTICAL;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TextWritingModeType text_writing_mode_to_mbgl(MBGL_STYLE_TEXT_WRITING_MODE value) {
  switch (value) {
    case MBGL_STYLE_TEXT_WRITING_MODE_HORIZONTAL: return style::TextWritingModeType::Horizontal;
    case MBGL_STYLE_TEXT_WRITING_MODE_VERTICAL: return style::TextWritingModeType::Vertical;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_TRANSFORM text_transform_to_c(style::TextTransformType value) {
  switch (value) {
    case style::TextTransformType::None: return MBGL_STYLE_TEXT_TRANSFORM_NONE;
    case style::TextTransformType::Uppercase: return MBGL_STYLE_TEXT_TRANSFORM_UPPERCASE;
    case style::TextTransformType::Lowercase: return MBGL_STYLE_TEXT_TRANSFORM_LOWERCASE;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TextTransformType text_transform_to_mbgl(MBGL_STYLE_TEXT_TRANSFORM value) {
  switch (value) {
    case MBGL_STYLE_TEXT_TRANSFORM_NONE: return style::TextTransformType::None;
    case MBGL_STYLE_TEXT_TRANSFORM_UPPERCASE: return style::TextTransformType::Uppercase;
    case MBGL_STYLE_TEXT_TRANSFORM_LOWERCASE: return style::TextTransformType::Lowercase;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_ICON_TRANSLATE_ANCHOR icon_translate_anchor_to_c(style::TranslateAnchorType value) {
  switch (value) {
    case style::TranslateAnchorType::Map: return MBGL_STYLE_ICON_TRANSLATE_ANCHOR_MAP;
    case style::TranslateAnchorType::Viewport: return MBGL_STYLE_ICON_TRANSLATE_ANCHOR_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TranslateAnchorType icon_translate_anchor_to_mbgl(MBGL_STYLE_ICON_TRANSLATE_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_ICON_TRANSLATE_ANCHOR_MAP: return style::TranslateAnchorType::Map;
    case MBGL_STYLE_ICON_TRANSLATE_ANCHOR_VIEWPORT: return style::TranslateAnchorType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_TEXT_TRANSLATE_ANCHOR text_translate_anchor_to_c(style::TranslateAnchorType value) {
  switch (value) {
    case style::TranslateAnchorType::Map: return MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_MAP;
    case style::TranslateAnchorType::Viewport: return MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TranslateAnchorType text_translate_anchor_to_mbgl(MBGL_STYLE_TEXT_TRANSLATE_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_MAP: return style::TranslateAnchorType::Map;
    case MBGL_STYLE_TEXT_TRANSLATE_ANCHOR_VIEWPORT: return style::TranslateAnchorType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR circle_translate_anchor_to_c(style::TranslateAnchorType value) {
  switch (value) {
    case style::TranslateAnchorType::Map: return MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_MAP;
    case style::TranslateAnchorType::Viewport: return MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TranslateAnchorType circle_translate_anchor_to_mbgl(MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_MAP: return style::TranslateAnchorType::Map;
    case MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR_VIEWPORT: return style::TranslateAnchorType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_CIRCLE_PITCH_SCALE circle_pitch_scale_to_c(style::CirclePitchScaleType value) {
  switch (value) {
    case style::CirclePitchScaleType::Map: return MBGL_STYLE_CIRCLE_PITCH_SCALE_MAP;
    case style::CirclePitchScaleType::Viewport: return MBGL_STYLE_CIRCLE_PITCH_SCALE_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::CirclePitchScaleType circle_pitch_scale_to_mbgl(MBGL_STYLE_CIRCLE_PITCH_SCALE value) {
  switch (value) {
    case MBGL_STYLE_CIRCLE_PITCH_SCALE_MAP: return style::CirclePitchScaleType::Map;
    case MBGL_STYLE_CIRCLE_PITCH_SCALE_VIEWPORT: return style::CirclePitchScaleType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT circle_pitch_alignment_to_c(style::AlignmentType value) {
  switch (value) {
    case style::AlignmentType::Map: return MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_MAP;
    case style::AlignmentType::Viewport: return MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::AlignmentType circle_pitch_alignment_to_mbgl(MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT value) {
  switch (value) {
    case MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_MAP: return style::AlignmentType::Map;
    case MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT_VIEWPORT: return style::AlignmentType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR fill_extrusion_translate_anchor_to_c(style::TranslateAnchorType value) {
  switch (value) {
    case style::TranslateAnchorType::Map: return MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_MAP;
    case style::TranslateAnchorType::Viewport: return MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::TranslateAnchorType fill_extrusion_translate_anchor_to_mbgl(MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_MAP: return style::TranslateAnchorType::Map;
    case MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR_VIEWPORT: return style::TranslateAnchorType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_RASTER_RESAMPLING raster_resampling_to_c(style::RasterResamplingType value) {
  switch (value) {
    case style::RasterResamplingType::Linear: return MBGL_STYLE_RASTER_RESAMPLING_LINEAR;
    case style::RasterResamplingType::Nearest: return MBGL_STYLE_RASTER_RESAMPLING_NEAREST;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::RasterResamplingType raster_resampling_to_mbgl(MBGL_STYLE_RASTER_RESAMPLING value) {
  switch (value) {
    case MBGL_STYLE_RASTER_RESAMPLING_LINEAR: return style::RasterResamplingType::Linear;
    case MBGL_STYLE_RASTER_RESAMPLING_NEAREST: return style::RasterResamplingType::Nearest;
  }
  throw std::invalid_argument("Unknown enum value");
}

MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR hillshade_illumination_anchor_to_c(style::HillshadeIlluminationAnchorType value) {
  switch (value) {
    case style::HillshadeIlluminationAnchorType::Map: return MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_MAP;
    case style::HillshadeIlluminationAnchorType::Viewport: return MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_VIEWPORT;
  }
  throw std::invalid_argument("Unknown enum value");
}

style::HillshadeIlluminationAnchorType hillshade_illumination_anchor_to_mbgl(MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR value) {
  switch (value) {
    case MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_MAP: return style::HillshadeIlluminationAnchorType::Map;
    case MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR_VIEWPORT: return style::HillshadeIlluminationAnchorType::Viewport;
  }
  throw std::invalid_argument("Unknown enum value");
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_property_value_float_create_constant(float value_) {
  auto value = new style::PropertyValue<float>(value_);
  return reinterpret_cast<mbgl_style_property_value_float_t*>(value);
}

EXTERNC void mbgl_style_property_value_float_destroy(mbgl_style_property_value_float_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<float>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_property_value_bool_create_constant(bool value_) {
  auto value = new style::PropertyValue<bool>(value_);
  return reinterpret_cast<mbgl_style_property_value_bool_t*>(value);
}

EXTERNC void mbgl_style_property_value_bool_destroy(mbgl_style_property_value_bool_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<bool>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_property_value_mbgl_color_create_constant(mbgl_color_t value_) {
  auto value = new style::PropertyValue<Color>(*reinterpret_cast<Color*>(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_color_destroy(mbgl_style_property_value_mbgl_color_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<Color>*>(ptr_);
  delete value;
}

EXTERNC std_array_float_2_t mbgl_style_std_array_float_2_create(float v0, float v1) {
  auto arr = new std::array<float, 2>();
  (*arr)[0] = v0;
  (*arr)[1] = v1;
  return static_cast<std_array_float_2_t>(arr);
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_property_value_std_array_float_2_create_constant(std_array_float_2_t value_) {
  auto value = new style::PropertyValue<std::array<float, 2>>(*reinterpret_cast<std::array<float, 2>*>(value_));
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t*>(value);
}

EXTERNC void mbgl_style_property_value_std_array_float_2_destroy(mbgl_style_property_value_std_array_float_2_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_fill_translate_anchor_t mbgl_style_property_value_mbgl_style_fill_translate_anchor_create_constant(enum MBGL_STYLE_FILL_TRANSLATE_ANCHOR value_) {
  auto value = new style::PropertyValue<style::TranslateAnchorType>(fill_translate_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_fill_translate_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_fill_translate_anchor_destroy(mbgl_style_property_value_mbgl_style_fill_translate_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_image_t mbgl_style_property_value_mbgl_style_expression_image_create_constant(mbgl_style_expression_image_t value_) {
  auto value = new style::PropertyValue<style::expression::Image>(*reinterpret_cast<style::expression::Image*>(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_image_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_expression_image_destroy(mbgl_style_property_value_mbgl_style_expression_image_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::expression::Image>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_line_cap_t mbgl_style_property_value_mbgl_style_line_cap_create_constant(enum MBGL_STYLE_LINE_CAP value_) {
  auto value = new style::PropertyValue<style::LineCapType>(line_cap_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_line_cap_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_line_cap_destroy(mbgl_style_property_value_mbgl_style_line_cap_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::LineCapType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_line_join_t mbgl_style_property_value_mbgl_style_line_join_create_constant(enum MBGL_STYLE_LINE_JOIN value_) {
  auto value = new style::PropertyValue<style::LineJoinType>(line_join_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_line_join_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_line_join_destroy(mbgl_style_property_value_mbgl_style_line_join_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::LineJoinType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_line_translate_anchor_t mbgl_style_property_value_mbgl_style_line_translate_anchor_create_constant(enum MBGL_STYLE_LINE_TRANSLATE_ANCHOR value_) {
  auto value = new style::PropertyValue<style::TranslateAnchorType>(line_translate_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_line_translate_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_line_translate_anchor_destroy(mbgl_style_property_value_mbgl_style_line_translate_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(ptr_);
  delete value;
}

EXTERNC std_vector_float_t mbgl_style_std_vector_float_create(size_t length_, float* values_) {
  auto arr = new std::vector<float>();
  arr->reserve(length_);
  for (size_t i = 0; i < length_; i++) {
    arr->push_back(values_[i]);
  }
  return static_cast<std_vector_float_t>(arr);
}

EXTERNC mbgl_style_property_value_std_vector_float_t mbgl_style_property_value_std_vector_float_create_constant(std_vector_float_t value_) {
  auto value = new style::PropertyValue<std::vector<float>>(*reinterpret_cast<std::vector<float>*>(value_));
  return reinterpret_cast<mbgl_style_property_value_std_vector_float_t*>(value);
}

EXTERNC void mbgl_style_property_value_std_vector_float_destroy(mbgl_style_property_value_std_vector_float_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<std::vector<float>>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_symbol_placement_t mbgl_style_property_value_mbgl_style_symbol_placement_create_constant(enum MBGL_STYLE_SYMBOL_PLACEMENT value_) {
  auto value = new style::PropertyValue<style::SymbolPlacementType>(symbol_placement_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_symbol_placement_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_symbol_placement_destroy(mbgl_style_property_value_mbgl_style_symbol_placement_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::SymbolPlacementType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_symbol_z_order_t mbgl_style_property_value_mbgl_style_symbol_z_order_create_constant(enum MBGL_STYLE_SYMBOL_Z_ORDER value_) {
  auto value = new style::PropertyValue<style::SymbolZOrderType>(symbol_z_order_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_symbol_z_order_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_symbol_z_order_destroy(mbgl_style_property_value_mbgl_style_symbol_z_order_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::SymbolZOrderType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_rotation_alignment_t mbgl_style_property_value_mbgl_style_icon_rotation_alignment_create_constant(enum MBGL_STYLE_ICON_ROTATION_ALIGNMENT value_) {
  auto value = new style::PropertyValue<style::AlignmentType>(icon_rotation_alignment_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_rotation_alignment_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_icon_rotation_alignment_destroy(mbgl_style_property_value_mbgl_style_icon_rotation_alignment_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_text_fit_t mbgl_style_property_value_mbgl_style_icon_text_fit_create_constant(enum MBGL_STYLE_ICON_TEXT_FIT value_) {
  auto value = new style::PropertyValue<style::IconTextFitType>(icon_text_fit_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_text_fit_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_icon_text_fit_destroy(mbgl_style_property_value_mbgl_style_icon_text_fit_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::IconTextFitType>*>(ptr_);
  delete value;
}

EXTERNC std_array_float_4_t mbgl_style_std_array_float_4_create(float v0, float v1, float v2, float v3) {
  auto arr = new std::array<float, 4>();
  (*arr)[0] = v0;
  (*arr)[1] = v1;
  (*arr)[2] = v2;
  (*arr)[3] = v3;
  return static_cast<std_array_float_4_t>(arr);
}

EXTERNC mbgl_style_property_value_std_array_float_4_t mbgl_style_property_value_std_array_float_4_create_constant(std_array_float_4_t value_) {
  auto value = new style::PropertyValue<std::array<float, 4>>(*reinterpret_cast<std::array<float, 4>*>(value_));
  return reinterpret_cast<mbgl_style_property_value_std_array_float_4_t*>(value);
}

EXTERNC void mbgl_style_property_value_std_array_float_4_destroy(mbgl_style_property_value_std_array_float_4_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<std::array<float, 4>>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_padding_t mbgl_style_property_value_mbgl_padding_create_constant(mbgl_padding_t value_) {
  auto value = new style::PropertyValue<Padding>(*reinterpret_cast<Padding*>(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_padding_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_padding_destroy(mbgl_style_property_value_mbgl_padding_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<Padding>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_anchor_t mbgl_style_property_value_mbgl_style_icon_anchor_create_constant(enum MBGL_STYLE_ICON_ANCHOR value_) {
  auto value = new style::PropertyValue<style::SymbolAnchorType>(icon_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_icon_anchor_destroy(mbgl_style_property_value_mbgl_style_icon_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::SymbolAnchorType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_pitch_alignment_t mbgl_style_property_value_mbgl_style_icon_pitch_alignment_create_constant(enum MBGL_STYLE_ICON_PITCH_ALIGNMENT value_) {
  auto value = new style::PropertyValue<style::AlignmentType>(icon_pitch_alignment_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_pitch_alignment_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_icon_pitch_alignment_destroy(mbgl_style_property_value_mbgl_style_icon_pitch_alignment_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_text_pitch_alignment_t mbgl_style_property_value_mbgl_style_text_pitch_alignment_create_constant(enum MBGL_STYLE_TEXT_PITCH_ALIGNMENT value_) {
  auto value = new style::PropertyValue<style::AlignmentType>(text_pitch_alignment_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_pitch_alignment_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_text_pitch_alignment_destroy(mbgl_style_property_value_mbgl_style_text_pitch_alignment_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_text_rotation_alignment_t mbgl_style_property_value_mbgl_style_text_rotation_alignment_create_constant(enum MBGL_STYLE_TEXT_ROTATION_ALIGNMENT value_) {
  auto value = new style::PropertyValue<style::AlignmentType>(text_rotation_alignment_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_rotation_alignment_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_text_rotation_alignment_destroy(mbgl_style_property_value_mbgl_style_text_rotation_alignment_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_formatted_t mbgl_style_property_value_mbgl_style_expression_formatted_create_constant(mbgl_style_expression_formatted_t value_) {
  auto value = new style::PropertyValue<style::expression::Formatted>(*reinterpret_cast<style::expression::Formatted*>(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_formatted_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_expression_formatted_destroy(mbgl_style_property_value_mbgl_style_expression_formatted_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::expression::Formatted>*>(ptr_);
  delete value;
}

EXTERNC std_vector_const_char_t mbgl_style_std_vector_const_char_create(size_t length_, const char** values_) {
  auto arr = new std::vector<std::string>();
  arr->reserve(length_);
  for (size_t i = 0; i < length_; i++) {
    arr->push_back(std::string(values_[i]));
  }
  return static_cast<std_vector_const_char_t>(arr);
}

EXTERNC mbgl_style_property_value_std_vector_const_char_t mbgl_style_property_value_std_vector_const_char_create_constant(std_vector_const_char_t value_) {
  auto value = new style::PropertyValue<std::vector<std::string>>(*reinterpret_cast<std::vector<std::string>*>(value_));
  return reinterpret_cast<mbgl_style_property_value_std_vector_const_char_t*>(value);
}

EXTERNC void mbgl_style_property_value_std_vector_const_char_destroy(mbgl_style_property_value_std_vector_const_char_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<std::vector<std::string>>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_text_justify_t mbgl_style_property_value_mbgl_style_text_justify_create_constant(enum MBGL_STYLE_TEXT_JUSTIFY value_) {
  auto value = new style::PropertyValue<style::TextJustifyType>(text_justify_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_justify_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_text_justify_destroy(mbgl_style_property_value_mbgl_style_text_justify_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TextJustifyType>*>(ptr_);
  delete value;
}

EXTERNC std_vector_mbgl_style_text_variable_anchor_t mbgl_style_std_vector_mbgl_style_text_variable_anchor_create(size_t length_, enum MBGL_STYLE_TEXT_VARIABLE_ANCHOR* values_) {
  auto arr = new std::vector<style::TextVariableAnchorType>();
  arr->reserve(length_);
  for (size_t i = 0; i < length_; i++) {
    arr->push_back(text_variable_anchor_to_mbgl(values_[i]));
  }
  return static_cast<std_vector_mbgl_style_text_variable_anchor_t>(arr);
}

EXTERNC mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_t mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_create_constant(std_vector_mbgl_style_text_variable_anchor_t value_) {
  auto value = new style::PropertyValue<std::vector<style::TextVariableAnchorType>>(*reinterpret_cast<std::vector<style::TextVariableAnchorType>*>(value_));
  return reinterpret_cast<mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_destroy(mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<std::vector<style::TextVariableAnchorType>>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_variable_anchor_offset_collection_t mbgl_style_property_value_mbgl_variable_anchor_offset_collection_create_constant(mbgl_variable_anchor_offset_collection_t value_) {
  auto value = new style::PropertyValue<VariableAnchorOffsetCollection>(*reinterpret_cast<VariableAnchorOffsetCollection*>(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_variable_anchor_offset_collection_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_variable_anchor_offset_collection_destroy(mbgl_style_property_value_mbgl_variable_anchor_offset_collection_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<VariableAnchorOffsetCollection>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_text_anchor_t mbgl_style_property_value_mbgl_style_text_anchor_create_constant(enum MBGL_STYLE_TEXT_ANCHOR value_) {
  auto value = new style::PropertyValue<style::SymbolAnchorType>(text_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_text_anchor_destroy(mbgl_style_property_value_mbgl_style_text_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::SymbolAnchorType>*>(ptr_);
  delete value;
}

EXTERNC std_vector_mbgl_style_text_writing_mode_t mbgl_style_std_vector_mbgl_style_text_writing_mode_create(size_t length_, enum MBGL_STYLE_TEXT_WRITING_MODE* values_) {
  auto arr = new std::vector<style::TextWritingModeType>();
  arr->reserve(length_);
  for (size_t i = 0; i < length_; i++) {
    arr->push_back(text_writing_mode_to_mbgl(values_[i]));
  }
  return static_cast<std_vector_mbgl_style_text_writing_mode_t>(arr);
}

EXTERNC mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_t mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_create_constant(std_vector_mbgl_style_text_writing_mode_t value_) {
  auto value = new style::PropertyValue<std::vector<style::TextWritingModeType>>(*reinterpret_cast<std::vector<style::TextWritingModeType>*>(value_));
  return reinterpret_cast<mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_t*>(value);
}

EXTERNC void mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_destroy(mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<std::vector<style::TextWritingModeType>>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_text_transform_t mbgl_style_property_value_mbgl_style_text_transform_create_constant(enum MBGL_STYLE_TEXT_TRANSFORM value_) {
  auto value = new style::PropertyValue<style::TextTransformType>(text_transform_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_transform_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_text_transform_destroy(mbgl_style_property_value_mbgl_style_text_transform_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TextTransformType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_translate_anchor_t mbgl_style_property_value_mbgl_style_icon_translate_anchor_create_constant(enum MBGL_STYLE_ICON_TRANSLATE_ANCHOR value_) {
  auto value = new style::PropertyValue<style::TranslateAnchorType>(icon_translate_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_translate_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_icon_translate_anchor_destroy(mbgl_style_property_value_mbgl_style_icon_translate_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_text_translate_anchor_t mbgl_style_property_value_mbgl_style_text_translate_anchor_create_constant(enum MBGL_STYLE_TEXT_TRANSLATE_ANCHOR value_) {
  auto value = new style::PropertyValue<style::TranslateAnchorType>(text_translate_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_translate_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_text_translate_anchor_destroy(mbgl_style_property_value_mbgl_style_text_translate_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_circle_translate_anchor_t mbgl_style_property_value_mbgl_style_circle_translate_anchor_create_constant(enum MBGL_STYLE_CIRCLE_TRANSLATE_ANCHOR value_) {
  auto value = new style::PropertyValue<style::TranslateAnchorType>(circle_translate_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_circle_translate_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_circle_translate_anchor_destroy(mbgl_style_property_value_mbgl_style_circle_translate_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_circle_pitch_scale_t mbgl_style_property_value_mbgl_style_circle_pitch_scale_create_constant(enum MBGL_STYLE_CIRCLE_PITCH_SCALE value_) {
  auto value = new style::PropertyValue<style::CirclePitchScaleType>(circle_pitch_scale_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_circle_pitch_scale_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_circle_pitch_scale_destroy(mbgl_style_property_value_mbgl_style_circle_pitch_scale_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::CirclePitchScaleType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_circle_pitch_alignment_t mbgl_style_property_value_mbgl_style_circle_pitch_alignment_create_constant(enum MBGL_STYLE_CIRCLE_PITCH_ALIGNMENT value_) {
  auto value = new style::PropertyValue<style::AlignmentType>(circle_pitch_alignment_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_circle_pitch_alignment_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_circle_pitch_alignment_destroy(mbgl_style_property_value_mbgl_style_circle_pitch_alignment_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_t mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_create_constant(enum MBGL_STYLE_FILL_EXTRUSION_TRANSLATE_ANCHOR value_) {
  auto value = new style::PropertyValue<style::TranslateAnchorType>(fill_extrusion_translate_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_destroy(mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_raster_resampling_t mbgl_style_property_value_mbgl_style_raster_resampling_create_constant(enum MBGL_STYLE_RASTER_RESAMPLING value_) {
  auto value = new style::PropertyValue<style::RasterResamplingType>(raster_resampling_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_raster_resampling_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_raster_resampling_destroy(mbgl_style_property_value_mbgl_style_raster_resampling_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::RasterResamplingType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_t mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_create_constant(enum MBGL_STYLE_HILLSHADE_ILLUMINATION_ANCHOR value_) {
  auto value = new style::PropertyValue<style::HillshadeIlluminationAnchorType>(hillshade_illumination_anchor_to_mbgl(value_));
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_t*>(value);
}

EXTERNC void mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_destroy(mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_t ptr_) {
  auto value = reinterpret_cast<style::PropertyValue<style::HillshadeIlluminationAnchorType>*>(ptr_);
  delete value;
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_fill_layer_fill_sort_key_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getFillSortKey()));
}

EXTERNC void mbgl_style_fill_layer_fill_sort_key_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillSortKey(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_fill_layer_visibility_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_fill_layer_visibility_set(mbgl_style_fill_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_fill_layer_fill_antialias_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getFillAntialias()));
}

EXTERNC void mbgl_style_fill_layer_fill_antialias_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillAntialias(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_fill_layer_fill_opacity_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getFillOpacity()));
}

EXTERNC void mbgl_style_fill_layer_fill_opacity_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_fill_layer_fill_color_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getFillColor()));
}

EXTERNC void mbgl_style_fill_layer_fill_color_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_fill_layer_fill_outline_color_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getFillOutlineColor()));
}

EXTERNC void mbgl_style_fill_layer_fill_outline_color_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillOutlineColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_fill_layer_fill_translate_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getFillTranslate()));
}

EXTERNC void mbgl_style_fill_layer_fill_translate_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillTranslate(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_fill_translate_anchor_t mbgl_style_fill_layer_fill_translate_anchor_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_fill_translate_anchor_t>(const_cast<style::PropertyValue<style::TranslateAnchorType>*>(&layer->getFillTranslateAnchor()));
}

EXTERNC void mbgl_style_fill_layer_fill_translate_anchor_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_mbgl_style_fill_translate_anchor_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillTranslateAnchor(*reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_image_t mbgl_style_fill_layer_fill_pattern_get(mbgl_style_fill_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_image_t>(const_cast<style::PropertyValue<style::expression::Image>*>(&layer->getFillPattern()));
}

EXTERNC void mbgl_style_fill_layer_fill_pattern_set(mbgl_style_fill_layer_t layer_, mbgl_style_property_value_mbgl_style_expression_image_t value_) {
  auto layer = reinterpret_cast<style::FillLayer*>(layer_);
  layer->setFillPattern(*reinterpret_cast<style::PropertyValue<style::expression::Image>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_line_cap_t mbgl_style_line_layer_line_cap_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_line_cap_t>(const_cast<style::PropertyValue<style::LineCapType>*>(&layer->getLineCap()));
}

EXTERNC void mbgl_style_line_layer_line_cap_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_mbgl_style_line_cap_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineCap(*reinterpret_cast<style::PropertyValue<style::LineCapType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_line_join_t mbgl_style_line_layer_line_join_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_line_join_t>(const_cast<style::PropertyValue<style::LineJoinType>*>(&layer->getLineJoin()));
}

EXTERNC void mbgl_style_line_layer_line_join_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_mbgl_style_line_join_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineJoin(*reinterpret_cast<style::PropertyValue<style::LineJoinType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_miter_limit_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineMiterLimit()));
}

EXTERNC void mbgl_style_line_layer_line_miter_limit_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineMiterLimit(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_round_limit_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineRoundLimit()));
}

EXTERNC void mbgl_style_line_layer_line_round_limit_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineRoundLimit(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_sort_key_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineSortKey()));
}

EXTERNC void mbgl_style_line_layer_line_sort_key_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineSortKey(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_line_layer_visibility_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_line_layer_visibility_set(mbgl_style_line_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_opacity_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineOpacity()));
}

EXTERNC void mbgl_style_line_layer_line_opacity_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_line_layer_line_color_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getLineColor()));
}

EXTERNC void mbgl_style_line_layer_line_color_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_line_layer_line_translate_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getLineTranslate()));
}

EXTERNC void mbgl_style_line_layer_line_translate_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineTranslate(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_line_translate_anchor_t mbgl_style_line_layer_line_translate_anchor_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_line_translate_anchor_t>(const_cast<style::PropertyValue<style::TranslateAnchorType>*>(&layer->getLineTranslateAnchor()));
}

EXTERNC void mbgl_style_line_layer_line_translate_anchor_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_mbgl_style_line_translate_anchor_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineTranslateAnchor(*reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_width_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineWidth()));
}

EXTERNC void mbgl_style_line_layer_line_width_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineWidth(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_gap_width_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineGapWidth()));
}

EXTERNC void mbgl_style_line_layer_line_gap_width_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineGapWidth(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_offset_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineOffset()));
}

EXTERNC void mbgl_style_line_layer_line_offset_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineOffset(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_line_layer_line_blur_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getLineBlur()));
}

EXTERNC void mbgl_style_line_layer_line_blur_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineBlur(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_std_vector_float_t mbgl_style_line_layer_line_dasharray_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_vector_float_t>(const_cast<style::PropertyValue<std::vector<float>>*>(&layer->getLineDasharray()));
}

EXTERNC void mbgl_style_line_layer_line_dasharray_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_std_vector_float_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineDasharray(*reinterpret_cast<style::PropertyValue<std::vector<float>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_image_t mbgl_style_line_layer_line_pattern_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_image_t>(const_cast<style::PropertyValue<style::expression::Image>*>(&layer->getLinePattern()));
}

EXTERNC void mbgl_style_line_layer_line_pattern_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_mbgl_style_expression_image_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLinePattern(*reinterpret_cast<style::PropertyValue<style::expression::Image>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_ramp_t mbgl_style_line_layer_line_gradient_get(mbgl_style_line_layer_t layer_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_ramp_t>(const_cast<style::ColorRampPropertyValue*>(&layer->getLineGradient()));
}

EXTERNC void mbgl_style_line_layer_line_gradient_set(mbgl_style_line_layer_t layer_, mbgl_style_property_value_mbgl_color_ramp_t value_) {
  auto layer = reinterpret_cast<style::LineLayer*>(layer_);
  layer->setLineGradient(*reinterpret_cast<style::ColorRampPropertyValue*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_symbol_placement_t mbgl_style_symbol_layer_symbol_placement_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_symbol_placement_t>(const_cast<style::PropertyValue<style::SymbolPlacementType>*>(&layer->getSymbolPlacement()));
}

EXTERNC void mbgl_style_symbol_layer_symbol_placement_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_symbol_placement_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setSymbolPlacement(*reinterpret_cast<style::PropertyValue<style::SymbolPlacementType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_symbol_spacing_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getSymbolSpacing()));
}

EXTERNC void mbgl_style_symbol_layer_symbol_spacing_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setSymbolSpacing(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_symbol_avoid_edges_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getSymbolAvoidEdges()));
}

EXTERNC void mbgl_style_symbol_layer_symbol_avoid_edges_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setSymbolAvoidEdges(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_symbol_sort_key_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getSymbolSortKey()));
}

EXTERNC void mbgl_style_symbol_layer_symbol_sort_key_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setSymbolSortKey(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_symbol_z_order_t mbgl_style_symbol_layer_symbol_z_order_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_symbol_z_order_t>(const_cast<style::PropertyValue<style::SymbolZOrderType>*>(&layer->getSymbolZOrder()));
}

EXTERNC void mbgl_style_symbol_layer_symbol_z_order_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_symbol_z_order_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setSymbolZOrder(*reinterpret_cast<style::PropertyValue<style::SymbolZOrderType>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_icon_allow_overlap_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getIconAllowOverlap()));
}

EXTERNC void mbgl_style_symbol_layer_icon_allow_overlap_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconAllowOverlap(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_icon_ignore_placement_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getIconIgnorePlacement()));
}

EXTERNC void mbgl_style_symbol_layer_icon_ignore_placement_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconIgnorePlacement(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_icon_optional_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getIconOptional()));
}

EXTERNC void mbgl_style_symbol_layer_icon_optional_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconOptional(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_rotation_alignment_t mbgl_style_symbol_layer_icon_rotation_alignment_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_rotation_alignment_t>(const_cast<style::PropertyValue<style::AlignmentType>*>(&layer->getIconRotationAlignment()));
}

EXTERNC void mbgl_style_symbol_layer_icon_rotation_alignment_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_icon_rotation_alignment_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconRotationAlignment(*reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_icon_size_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getIconSize()));
}

EXTERNC void mbgl_style_symbol_layer_icon_size_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconSize(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_text_fit_t mbgl_style_symbol_layer_icon_text_fit_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_text_fit_t>(const_cast<style::PropertyValue<style::IconTextFitType>*>(&layer->getIconTextFit()));
}

EXTERNC void mbgl_style_symbol_layer_icon_text_fit_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_icon_text_fit_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconTextFit(*reinterpret_cast<style::PropertyValue<style::IconTextFitType>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_4_t mbgl_style_symbol_layer_icon_text_fit_padding_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_4_t>(const_cast<style::PropertyValue<std::array<float, 4>>*>(&layer->getIconTextFitPadding()));
}

EXTERNC void mbgl_style_symbol_layer_icon_text_fit_padding_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_array_float_4_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconTextFitPadding(*reinterpret_cast<style::PropertyValue<std::array<float, 4>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_image_t mbgl_style_symbol_layer_icon_image_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_image_t>(const_cast<style::PropertyValue<style::expression::Image>*>(&layer->getIconImage()));
}

EXTERNC void mbgl_style_symbol_layer_icon_image_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_expression_image_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconImage(*reinterpret_cast<style::PropertyValue<style::expression::Image>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_icon_rotate_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getIconRotate()));
}

EXTERNC void mbgl_style_symbol_layer_icon_rotate_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconRotate(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_padding_t mbgl_style_symbol_layer_icon_padding_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_padding_t>(const_cast<style::PropertyValue<Padding>*>(&layer->getIconPadding()));
}

EXTERNC void mbgl_style_symbol_layer_icon_padding_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_padding_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconPadding(*reinterpret_cast<style::PropertyValue<Padding>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_icon_keep_upright_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getIconKeepUpright()));
}

EXTERNC void mbgl_style_symbol_layer_icon_keep_upright_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconKeepUpright(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_symbol_layer_icon_offset_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getIconOffset()));
}

EXTERNC void mbgl_style_symbol_layer_icon_offset_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconOffset(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_anchor_t mbgl_style_symbol_layer_icon_anchor_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_anchor_t>(const_cast<style::PropertyValue<style::SymbolAnchorType>*>(&layer->getIconAnchor()));
}

EXTERNC void mbgl_style_symbol_layer_icon_anchor_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_icon_anchor_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconAnchor(*reinterpret_cast<style::PropertyValue<style::SymbolAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_pitch_alignment_t mbgl_style_symbol_layer_icon_pitch_alignment_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_pitch_alignment_t>(const_cast<style::PropertyValue<style::AlignmentType>*>(&layer->getIconPitchAlignment()));
}

EXTERNC void mbgl_style_symbol_layer_icon_pitch_alignment_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_icon_pitch_alignment_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconPitchAlignment(*reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_text_pitch_alignment_t mbgl_style_symbol_layer_text_pitch_alignment_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_pitch_alignment_t>(const_cast<style::PropertyValue<style::AlignmentType>*>(&layer->getTextPitchAlignment()));
}

EXTERNC void mbgl_style_symbol_layer_text_pitch_alignment_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_text_pitch_alignment_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextPitchAlignment(*reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_text_rotation_alignment_t mbgl_style_symbol_layer_text_rotation_alignment_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_rotation_alignment_t>(const_cast<style::PropertyValue<style::AlignmentType>*>(&layer->getTextRotationAlignment()));
}

EXTERNC void mbgl_style_symbol_layer_text_rotation_alignment_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_text_rotation_alignment_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextRotationAlignment(*reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_formatted_t mbgl_style_symbol_layer_text_field_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_formatted_t>(const_cast<style::PropertyValue<style::expression::Formatted>*>(&layer->getTextField()));
}

EXTERNC void mbgl_style_symbol_layer_text_field_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_expression_formatted_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextField(*reinterpret_cast<style::PropertyValue<style::expression::Formatted>*>(value_));
}

EXTERNC mbgl_style_property_value_std_vector_const_char_t mbgl_style_symbol_layer_text_font_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_vector_const_char_t>(const_cast<style::PropertyValue<std::vector<std::string>>*>(&layer->getTextFont()));
}

EXTERNC void mbgl_style_symbol_layer_text_font_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_vector_const_char_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextFont(*reinterpret_cast<style::PropertyValue<std::vector<std::string>>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_size_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextSize()));
}

EXTERNC void mbgl_style_symbol_layer_text_size_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextSize(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_max_width_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextMaxWidth()));
}

EXTERNC void mbgl_style_symbol_layer_text_max_width_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextMaxWidth(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_line_height_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextLineHeight()));
}

EXTERNC void mbgl_style_symbol_layer_text_line_height_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextLineHeight(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_letter_spacing_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextLetterSpacing()));
}

EXTERNC void mbgl_style_symbol_layer_text_letter_spacing_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextLetterSpacing(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_text_justify_t mbgl_style_symbol_layer_text_justify_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_justify_t>(const_cast<style::PropertyValue<style::TextJustifyType>*>(&layer->getTextJustify()));
}

EXTERNC void mbgl_style_symbol_layer_text_justify_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_text_justify_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextJustify(*reinterpret_cast<style::PropertyValue<style::TextJustifyType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_radial_offset_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextRadialOffset()));
}

EXTERNC void mbgl_style_symbol_layer_text_radial_offset_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextRadialOffset(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_t mbgl_style_symbol_layer_text_variable_anchor_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_t>(const_cast<style::PropertyValue<std::vector<style::TextVariableAnchorType>>*>(&layer->getTextVariableAnchor()));
}

EXTERNC void mbgl_style_symbol_layer_text_variable_anchor_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_vector_mbgl_style_text_variable_anchor_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextVariableAnchor(*reinterpret_cast<style::PropertyValue<std::vector<style::TextVariableAnchorType>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_variable_anchor_offset_collection_t mbgl_style_symbol_layer_text_variable_anchor_offset_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_variable_anchor_offset_collection_t>(const_cast<style::PropertyValue<VariableAnchorOffsetCollection>*>(&layer->getTextVariableAnchorOffset()));
}

EXTERNC void mbgl_style_symbol_layer_text_variable_anchor_offset_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_variable_anchor_offset_collection_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextVariableAnchorOffset(*reinterpret_cast<style::PropertyValue<VariableAnchorOffsetCollection>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_text_anchor_t mbgl_style_symbol_layer_text_anchor_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_anchor_t>(const_cast<style::PropertyValue<style::SymbolAnchorType>*>(&layer->getTextAnchor()));
}

EXTERNC void mbgl_style_symbol_layer_text_anchor_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_text_anchor_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextAnchor(*reinterpret_cast<style::PropertyValue<style::SymbolAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_max_angle_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextMaxAngle()));
}

EXTERNC void mbgl_style_symbol_layer_text_max_angle_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextMaxAngle(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_t mbgl_style_symbol_layer_text_writing_mode_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_t>(const_cast<style::PropertyValue<std::vector<style::TextWritingModeType>>*>(&layer->getTextWritingMode()));
}

EXTERNC void mbgl_style_symbol_layer_text_writing_mode_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_vector_mbgl_style_text_writing_mode_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextWritingMode(*reinterpret_cast<style::PropertyValue<std::vector<style::TextWritingModeType>>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_rotate_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextRotate()));
}

EXTERNC void mbgl_style_symbol_layer_text_rotate_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextRotate(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_padding_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextPadding()));
}

EXTERNC void mbgl_style_symbol_layer_text_padding_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextPadding(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_text_keep_upright_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getTextKeepUpright()));
}

EXTERNC void mbgl_style_symbol_layer_text_keep_upright_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextKeepUpright(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_text_transform_t mbgl_style_symbol_layer_text_transform_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_transform_t>(const_cast<style::PropertyValue<style::TextTransformType>*>(&layer->getTextTransform()));
}

EXTERNC void mbgl_style_symbol_layer_text_transform_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_text_transform_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextTransform(*reinterpret_cast<style::PropertyValue<style::TextTransformType>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_symbol_layer_text_offset_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getTextOffset()));
}

EXTERNC void mbgl_style_symbol_layer_text_offset_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextOffset(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_text_allow_overlap_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getTextAllowOverlap()));
}

EXTERNC void mbgl_style_symbol_layer_text_allow_overlap_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextAllowOverlap(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_text_ignore_placement_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getTextIgnorePlacement()));
}

EXTERNC void mbgl_style_symbol_layer_text_ignore_placement_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextIgnorePlacement(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_symbol_layer_text_optional_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getTextOptional()));
}

EXTERNC void mbgl_style_symbol_layer_text_optional_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextOptional(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_symbol_layer_visibility_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_symbol_layer_visibility_set(mbgl_style_symbol_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_icon_opacity_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getIconOpacity()));
}

EXTERNC void mbgl_style_symbol_layer_icon_opacity_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_symbol_layer_icon_color_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getIconColor()));
}

EXTERNC void mbgl_style_symbol_layer_icon_color_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_symbol_layer_icon_halo_color_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getIconHaloColor()));
}

EXTERNC void mbgl_style_symbol_layer_icon_halo_color_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconHaloColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_icon_halo_width_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getIconHaloWidth()));
}

EXTERNC void mbgl_style_symbol_layer_icon_halo_width_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconHaloWidth(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_icon_halo_blur_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getIconHaloBlur()));
}

EXTERNC void mbgl_style_symbol_layer_icon_halo_blur_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconHaloBlur(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_symbol_layer_icon_translate_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getIconTranslate()));
}

EXTERNC void mbgl_style_symbol_layer_icon_translate_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconTranslate(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_icon_translate_anchor_t mbgl_style_symbol_layer_icon_translate_anchor_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_icon_translate_anchor_t>(const_cast<style::PropertyValue<style::TranslateAnchorType>*>(&layer->getIconTranslateAnchor()));
}

EXTERNC void mbgl_style_symbol_layer_icon_translate_anchor_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_icon_translate_anchor_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setIconTranslateAnchor(*reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_opacity_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextOpacity()));
}

EXTERNC void mbgl_style_symbol_layer_text_opacity_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_symbol_layer_text_color_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getTextColor()));
}

EXTERNC void mbgl_style_symbol_layer_text_color_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_symbol_layer_text_halo_color_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getTextHaloColor()));
}

EXTERNC void mbgl_style_symbol_layer_text_halo_color_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextHaloColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_halo_width_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextHaloWidth()));
}

EXTERNC void mbgl_style_symbol_layer_text_halo_width_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextHaloWidth(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_symbol_layer_text_halo_blur_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getTextHaloBlur()));
}

EXTERNC void mbgl_style_symbol_layer_text_halo_blur_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextHaloBlur(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_symbol_layer_text_translate_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getTextTranslate()));
}

EXTERNC void mbgl_style_symbol_layer_text_translate_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextTranslate(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_text_translate_anchor_t mbgl_style_symbol_layer_text_translate_anchor_get(mbgl_style_symbol_layer_t layer_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_text_translate_anchor_t>(const_cast<style::PropertyValue<style::TranslateAnchorType>*>(&layer->getTextTranslateAnchor()));
}

EXTERNC void mbgl_style_symbol_layer_text_translate_anchor_set(mbgl_style_symbol_layer_t layer_, mbgl_style_property_value_mbgl_style_text_translate_anchor_t value_) {
  auto layer = reinterpret_cast<style::SymbolLayer*>(layer_);
  layer->setTextTranslateAnchor(*reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_circle_layer_circle_sort_key_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getCircleSortKey()));
}

EXTERNC void mbgl_style_circle_layer_circle_sort_key_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleSortKey(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_circle_layer_visibility_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_circle_layer_visibility_set(mbgl_style_circle_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_circle_layer_circle_radius_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getCircleRadius()));
}

EXTERNC void mbgl_style_circle_layer_circle_radius_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleRadius(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_circle_layer_circle_color_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getCircleColor()));
}

EXTERNC void mbgl_style_circle_layer_circle_color_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_circle_layer_circle_blur_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getCircleBlur()));
}

EXTERNC void mbgl_style_circle_layer_circle_blur_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleBlur(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_circle_layer_circle_opacity_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getCircleOpacity()));
}

EXTERNC void mbgl_style_circle_layer_circle_opacity_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_circle_layer_circle_translate_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getCircleTranslate()));
}

EXTERNC void mbgl_style_circle_layer_circle_translate_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleTranslate(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_circle_translate_anchor_t mbgl_style_circle_layer_circle_translate_anchor_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_circle_translate_anchor_t>(const_cast<style::PropertyValue<style::TranslateAnchorType>*>(&layer->getCircleTranslateAnchor()));
}

EXTERNC void mbgl_style_circle_layer_circle_translate_anchor_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_mbgl_style_circle_translate_anchor_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleTranslateAnchor(*reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_circle_pitch_scale_t mbgl_style_circle_layer_circle_pitch_scale_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_circle_pitch_scale_t>(const_cast<style::PropertyValue<style::CirclePitchScaleType>*>(&layer->getCirclePitchScale()));
}

EXTERNC void mbgl_style_circle_layer_circle_pitch_scale_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_mbgl_style_circle_pitch_scale_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCirclePitchScale(*reinterpret_cast<style::PropertyValue<style::CirclePitchScaleType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_circle_pitch_alignment_t mbgl_style_circle_layer_circle_pitch_alignment_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_circle_pitch_alignment_t>(const_cast<style::PropertyValue<style::AlignmentType>*>(&layer->getCirclePitchAlignment()));
}

EXTERNC void mbgl_style_circle_layer_circle_pitch_alignment_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_mbgl_style_circle_pitch_alignment_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCirclePitchAlignment(*reinterpret_cast<style::PropertyValue<style::AlignmentType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_circle_layer_circle_stroke_width_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getCircleStrokeWidth()));
}

EXTERNC void mbgl_style_circle_layer_circle_stroke_width_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleStrokeWidth(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_circle_layer_circle_stroke_color_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getCircleStrokeColor()));
}

EXTERNC void mbgl_style_circle_layer_circle_stroke_color_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleStrokeColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_circle_layer_circle_stroke_opacity_get(mbgl_style_circle_layer_t layer_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getCircleStrokeOpacity()));
}

EXTERNC void mbgl_style_circle_layer_circle_stroke_opacity_set(mbgl_style_circle_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::CircleLayer*>(layer_);
  layer->setCircleStrokeOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_heatmap_layer_visibility_get(mbgl_style_heatmap_layer_t layer_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_heatmap_layer_visibility_set(mbgl_style_heatmap_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_heatmap_layer_heatmap_radius_get(mbgl_style_heatmap_layer_t layer_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getHeatmapRadius()));
}

EXTERNC void mbgl_style_heatmap_layer_heatmap_radius_set(mbgl_style_heatmap_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  layer->setHeatmapRadius(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_heatmap_layer_heatmap_weight_get(mbgl_style_heatmap_layer_t layer_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getHeatmapWeight()));
}

EXTERNC void mbgl_style_heatmap_layer_heatmap_weight_set(mbgl_style_heatmap_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  layer->setHeatmapWeight(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_heatmap_layer_heatmap_intensity_get(mbgl_style_heatmap_layer_t layer_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getHeatmapIntensity()));
}

EXTERNC void mbgl_style_heatmap_layer_heatmap_intensity_set(mbgl_style_heatmap_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  layer->setHeatmapIntensity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_ramp_t mbgl_style_heatmap_layer_heatmap_color_get(mbgl_style_heatmap_layer_t layer_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_ramp_t>(const_cast<style::ColorRampPropertyValue*>(&layer->getHeatmapColor()));
}

EXTERNC void mbgl_style_heatmap_layer_heatmap_color_set(mbgl_style_heatmap_layer_t layer_, mbgl_style_property_value_mbgl_color_ramp_t value_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  layer->setHeatmapColor(*reinterpret_cast<style::ColorRampPropertyValue*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_heatmap_layer_heatmap_opacity_get(mbgl_style_heatmap_layer_t layer_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getHeatmapOpacity()));
}

EXTERNC void mbgl_style_heatmap_layer_heatmap_opacity_set(mbgl_style_heatmap_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::HeatmapLayer*>(layer_);
  layer->setHeatmapOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_fill_extrusion_layer_visibility_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_fill_extrusion_layer_visibility_set(mbgl_style_fill_extrusion_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_fill_extrusion_layer_fill_extrusion_opacity_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getFillExtrusionOpacity()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_opacity_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_fill_extrusion_layer_fill_extrusion_color_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getFillExtrusionColor()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_color_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_std_array_float_2_t mbgl_style_fill_extrusion_layer_fill_extrusion_translate_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_std_array_float_2_t>(const_cast<style::PropertyValue<std::array<float, 2>>*>(&layer->getFillExtrusionTranslate()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_translate_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_std_array_float_2_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionTranslate(*reinterpret_cast<style::PropertyValue<std::array<float, 2>>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_t mbgl_style_fill_extrusion_layer_fill_extrusion_translate_anchor_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_t>(const_cast<style::PropertyValue<style::TranslateAnchorType>*>(&layer->getFillExtrusionTranslateAnchor()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_translate_anchor_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_mbgl_style_fill_extrusion_translate_anchor_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionTranslateAnchor(*reinterpret_cast<style::PropertyValue<style::TranslateAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_image_t mbgl_style_fill_extrusion_layer_fill_extrusion_pattern_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_image_t>(const_cast<style::PropertyValue<style::expression::Image>*>(&layer->getFillExtrusionPattern()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_pattern_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_mbgl_style_expression_image_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionPattern(*reinterpret_cast<style::PropertyValue<style::expression::Image>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_fill_extrusion_layer_fill_extrusion_height_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getFillExtrusionHeight()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_height_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionHeight(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_fill_extrusion_layer_fill_extrusion_base_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getFillExtrusionBase()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_base_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionBase(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_bool_t mbgl_style_fill_extrusion_layer_fill_extrusion_vertical_gradient_get(mbgl_style_fill_extrusion_layer_t layer_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_bool_t>(const_cast<style::PropertyValue<bool>*>(&layer->getFillExtrusionVerticalGradient()));
}

EXTERNC void mbgl_style_fill_extrusion_layer_fill_extrusion_vertical_gradient_set(mbgl_style_fill_extrusion_layer_t layer_, mbgl_style_property_value_bool_t value_) {
  auto layer = reinterpret_cast<style::FillExtrusionLayer*>(layer_);
  layer->setFillExtrusionVerticalGradient(*reinterpret_cast<style::PropertyValue<bool>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_raster_layer_visibility_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_raster_layer_visibility_set(mbgl_style_raster_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_raster_layer_raster_opacity_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getRasterOpacity()));
}

EXTERNC void mbgl_style_raster_layer_raster_opacity_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_raster_layer_raster_hue_rotate_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getRasterHueRotate()));
}

EXTERNC void mbgl_style_raster_layer_raster_hue_rotate_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterHueRotate(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_raster_layer_raster_brightness_min_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getRasterBrightnessMin()));
}

EXTERNC void mbgl_style_raster_layer_raster_brightness_min_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterBrightnessMin(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_raster_layer_raster_brightness_max_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getRasterBrightnessMax()));
}

EXTERNC void mbgl_style_raster_layer_raster_brightness_max_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterBrightnessMax(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_raster_layer_raster_saturation_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getRasterSaturation()));
}

EXTERNC void mbgl_style_raster_layer_raster_saturation_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterSaturation(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_raster_layer_raster_contrast_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getRasterContrast()));
}

EXTERNC void mbgl_style_raster_layer_raster_contrast_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterContrast(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_raster_resampling_t mbgl_style_raster_layer_raster_resampling_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_raster_resampling_t>(const_cast<style::PropertyValue<style::RasterResamplingType>*>(&layer->getRasterResampling()));
}

EXTERNC void mbgl_style_raster_layer_raster_resampling_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_mbgl_style_raster_resampling_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterResampling(*reinterpret_cast<style::PropertyValue<style::RasterResamplingType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_raster_layer_raster_fade_duration_get(mbgl_style_raster_layer_t layer_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getRasterFadeDuration()));
}

EXTERNC void mbgl_style_raster_layer_raster_fade_duration_set(mbgl_style_raster_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::RasterLayer*>(layer_);
  layer->setRasterFadeDuration(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_hillshade_layer_visibility_get(mbgl_style_hillshade_layer_t layer_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_hillshade_layer_visibility_set(mbgl_style_hillshade_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_hillshade_layer_hillshade_illumination_direction_get(mbgl_style_hillshade_layer_t layer_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getHillshadeIlluminationDirection()));
}

EXTERNC void mbgl_style_hillshade_layer_hillshade_illumination_direction_set(mbgl_style_hillshade_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  layer->setHillshadeIlluminationDirection(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_t mbgl_style_hillshade_layer_hillshade_illumination_anchor_get(mbgl_style_hillshade_layer_t layer_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_t>(const_cast<style::PropertyValue<style::HillshadeIlluminationAnchorType>*>(&layer->getHillshadeIlluminationAnchor()));
}

EXTERNC void mbgl_style_hillshade_layer_hillshade_illumination_anchor_set(mbgl_style_hillshade_layer_t layer_, mbgl_style_property_value_mbgl_style_hillshade_illumination_anchor_t value_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  layer->setHillshadeIlluminationAnchor(*reinterpret_cast<style::PropertyValue<style::HillshadeIlluminationAnchorType>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_hillshade_layer_hillshade_exaggeration_get(mbgl_style_hillshade_layer_t layer_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getHillshadeExaggeration()));
}

EXTERNC void mbgl_style_hillshade_layer_hillshade_exaggeration_set(mbgl_style_hillshade_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  layer->setHillshadeExaggeration(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_hillshade_layer_hillshade_shadow_color_get(mbgl_style_hillshade_layer_t layer_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getHillshadeShadowColor()));
}

EXTERNC void mbgl_style_hillshade_layer_hillshade_shadow_color_set(mbgl_style_hillshade_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  layer->setHillshadeShadowColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_hillshade_layer_hillshade_highlight_color_get(mbgl_style_hillshade_layer_t layer_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getHillshadeHighlightColor()));
}

EXTERNC void mbgl_style_hillshade_layer_hillshade_highlight_color_set(mbgl_style_hillshade_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  layer->setHillshadeHighlightColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_hillshade_layer_hillshade_accent_color_get(mbgl_style_hillshade_layer_t layer_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getHillshadeAccentColor()));
}

EXTERNC void mbgl_style_hillshade_layer_hillshade_accent_color_set(mbgl_style_hillshade_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::HillshadeLayer*>(layer_);
  layer->setHillshadeAccentColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC enum MBGL_STYLE_VISIBILITY mbgl_style_background_layer_visibility_get(mbgl_style_background_layer_t layer_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  return visibility_to_c(layer->getVisibility());
}

EXTERNC void mbgl_style_background_layer_visibility_set(mbgl_style_background_layer_t layer_, enum MBGL_STYLE_VISIBILITY value_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  layer->setVisibility(visibility_to_mbgl(value_));
}

EXTERNC mbgl_style_property_value_mbgl_color_t mbgl_style_background_layer_background_color_get(mbgl_style_background_layer_t layer_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_color_t>(const_cast<style::PropertyValue<Color>*>(&layer->getBackgroundColor()));
}

EXTERNC void mbgl_style_background_layer_background_color_set(mbgl_style_background_layer_t layer_, mbgl_style_property_value_mbgl_color_t value_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  layer->setBackgroundColor(*reinterpret_cast<style::PropertyValue<Color>*>(value_));
}

EXTERNC mbgl_style_property_value_mbgl_style_expression_image_t mbgl_style_background_layer_background_pattern_get(mbgl_style_background_layer_t layer_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_mbgl_style_expression_image_t>(const_cast<style::PropertyValue<style::expression::Image>*>(&layer->getBackgroundPattern()));
}

EXTERNC void mbgl_style_background_layer_background_pattern_set(mbgl_style_background_layer_t layer_, mbgl_style_property_value_mbgl_style_expression_image_t value_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  layer->setBackgroundPattern(*reinterpret_cast<style::PropertyValue<style::expression::Image>*>(value_));
}

EXTERNC mbgl_style_property_value_float_t mbgl_style_background_layer_background_opacity_get(mbgl_style_background_layer_t layer_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  return reinterpret_cast<mbgl_style_property_value_float_t>(const_cast<style::PropertyValue<float>*>(&layer->getBackgroundOpacity()));
}

EXTERNC void mbgl_style_background_layer_background_opacity_set(mbgl_style_background_layer_t layer_, mbgl_style_property_value_float_t value_) {
  auto layer = reinterpret_cast<style::BackgroundLayer*>(layer_);
  layer->setBackgroundOpacity(*reinterpret_cast<style::PropertyValue<float>*>(value_));
}
