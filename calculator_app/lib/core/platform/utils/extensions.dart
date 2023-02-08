import 'package:calculator_app/core/core.dart';
import 'package:flutter/material.dart';

extension ThemeTranformerExtenstion on PreferredThemeCubitState {
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

  Color? theme1TextColorTranfromer() {
    if (this == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return ColorPalette.white;
    }
    return null;
  }
}
