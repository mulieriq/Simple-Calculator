import 'package:calculator_app/core/core.dart';
import 'package:flutter/material.dart';

// returns different colors depending on the current theme

extension ThemeTranformerExtenstion on PreferredThemeCubitState {
  // Transforms The screen background color depending on the theme
  Color screeThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.darkDesaturatedBlueScreenBackground;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.veryLightGrayScreenBackground;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.veryDarkVioletTKS;
    }
    return ColorPalette.darkDesaturatedBlueScreenBackground;
  }

  // Transforms The Keypad and toggle button
  // background color depending on the theme
  Color keyPadToggleThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.darkDesaturatedBlueTKBackground;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.grayishRedTKBackground;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.veryDarkVioletTKS;
    }
    return ColorPalette.darkDesaturatedBlueTKBackground;
  }

  // Transforms The Equal and toggle button
  // colors depending on the theme
  Color equalAndToggleButtonThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.redTKBackground;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.orangeTKBackground;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.pureCyanTKBackground;
    }
    return ColorPalette.redTKBackground;
  }

  // Transforms DEL and Reset Button colors depending on the theme
  Color deleteResetButtonThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.darkDesaturatedBlueKeyBackground;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.darkModeratedCyanKeyBackground;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.darkVioletKeyBackground;
    }
    return ColorPalette.darkDesaturatedBlueKeyBackground;
  }

  // Transforms Keypad Button colors depending on the theme
  Color keyPadButtonThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.lightGrayishOrangeKeyBackground;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.lightGrayishYellowKeyBackground;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.veryDarkVioletKeyBackground;
    }
    return ColorPalette.lightGrayishOrangeKeyBackground;
  }

  // Transforms Keypad Button shadow colors depending on the theme
  Color keyPadNumberButtonShadowThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.grayishOrangeKeyShadow;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.darkGrayishOrangeKeyShadow;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.darkMagentaKeyShadow;
    }
    return ColorPalette.grayishOrangeKeyShadow;
  }

  // Transforms DEL and Reset Button shadow colors depending on the theme
  Color deleteResetButtonShadowThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.darkDesaturatedBlueKeyShadow;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.veryDarCyanKeyShadow;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.vividMagentaKeyShadow;
    }
    return ColorPalette.darkDesaturatedBlueKeyShadow;
  }

  // Transforms Equal Button shadow colors depending on the theme
  Color equalButtonShadowThemeTransformer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.darkRedKeyShadow;
    }
    if (this == PreferredThemeCubitState.lightGrayTheme()) {
      return ColorPalette.darkOrangeKeyShadow;
    }
    if (this == PreferredThemeCubitState.darkVioletTheme()) {
      return ColorPalette.softCyanKeyShadow;
    }
    return ColorPalette.darkRedKeyShadow;
  }

  // returns text color for theme 1
  Color? theme1TextColorTranfromer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.white;
    }
    return null;
  }
}
