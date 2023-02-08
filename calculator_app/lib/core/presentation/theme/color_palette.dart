import 'package:calculator_app/core/core.dart';
import 'package:flutter/material.dart';

class ColorPalette {
// TK (Toggle and Keypad)
// TKS (Toggle, Keypad and Screen)

//  Theme 1 : Dark desaturated blue

// Backgrounds
  static Color darkDesaturatedBlueMainBackground =
      colorTransformer(222, 26, 31);

  static Color darkDesaturatedBlueTKBackground = colorTransformer(233, 31, 20);

  static Color darkDesaturatedBlueScreenBackground =
      colorTransformer(224, 36, 15);

// Keys

  static Color darkDesaturatedBlueKeyBackground = colorTransformer(225, 21, 49);

  static Color darkDesaturatedBlueKeyShadow = colorTransformer(224, 28, 35);

  static Color redTKBackground = colorTransformer(6, 63, 50);

  static Color darkRedKeyShadow = colorTransformer(6, 70, 34);

  static Color lightGrayishOrangeKeyBackground = colorTransformer(30, 25, 89);

  static Color grayishOrangeKeyShadow = colorTransformer(28, 16, 65);

// Text

  static Color veryDarkgrayishBlue = colorTransformer(221, 14, 31);

//  Theme 2 :  Light gray

// Background

  static Color lightGrayMainBackground = colorTransformer(0, 0, 90);

  static Color grayishRedTKBackground = colorTransformer(0, 5, 81);

  static Color veryLightGrayScreenBackground = colorTransformer(0, 0, 93);

// Keys

  static Color darkModeratedCyanKeyBackground = colorTransformer(185, 42, 37);

  static Color veryDarCyanKeyShadow = colorTransformer(185, 58, 25);

  static Color orangeTKBackground = colorTransformer(25, 98, 40);

  static Color darkOrangeKeyShadow = colorTransformer(25, 99, 27);

  static Color lightGrayishYellowKeyBackground = colorTransformer(45, 7, 89);

  static Color darkGrayishOrangeKeyShadow = colorTransformer(35, 11, 61);

// Text

  static Color veryDarkgrayishYellow = colorTransformer(60, 10, 19);

//  Theme 3 : Dark violet

// Background

  static Color veryDarkVioletMainBackground = colorTransformer(268, 75, 9);

  static Color veryDarkVioletTKS = colorTransformer(268, 71, 12);

// Keys

  static Color darkVioletKeyBackground = colorTransformer(281, 89, 26);

  static Color vividMagentaKeyShadow = colorTransformer(285, 91, 52);

  static Color pureCyanTKBackground = colorTransformer(176, 100, 44);

  static Color softCyanKeyShadow = colorTransformer(177, 92, 70);

  static Color veryDarkVioletKeyBackground = colorTransformer(268, 47, 21);

  static Color darkMagentaKeyShadow = colorTransformer(290, 70, 36);

// Text

  static Color lightYellow = colorTransformer(52, 100, 62);

  static Color veryDarkBlue = colorTransformer(198, 20, 13);

// All Text White Color

  static Color white = colorTransformer(0, 0, 100);
}
