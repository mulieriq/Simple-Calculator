import 'package:flutter/widgets.dart';

// Transforms HSL color to Color
Color colorTransformer(
  double hue,
  double saturation,
  double lightness,
) =>
    HSLColor.fromAHSL(1, hue, saturation / 100, lightness / 100).toColor();
