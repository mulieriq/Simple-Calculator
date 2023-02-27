import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/core/presentation/presentation.dart';
import 'package:flutter/material.dart';

enum PreferredTheme { desaturatedBlueTheme, lightGrayTheme, darkVioletTheme }

class AppTheme {
  Color? mainBackground;
  Color? screenBackground;
  Color? keyBackground;
  Color? keyShadow;
  Color? tKBackgroundKey;
  Color? tEqualsKeyBackground;
  Color? tEqualsKeyShadow;
  Color? resetDelKeyBackground;
  Color? resetDelKeyShadow;
  Color? txtMain;
  Color? txt2;
  Color? txt3;

  // ignore: prefer_constructors_over_static_methods
  static AppTheme desaturatedBlueTheme() {
    return AppTheme()
      ..mainBackground = ColorPalette.darkDesaturatedBlueMainBackground
      ..screenBackground = ColorPalette.darkDesaturatedBlueScreenBackground
      ..keyBackground = ColorPalette.lightGrayishOrangeKeyBackground
      ..keyShadow = ColorPalette.grayishOrangeKeyShadow
      ..tKBackgroundKey = ColorPalette.darkDesaturatedBlueTKBackground
      ..tEqualsKeyBackground = ColorPalette.redTKBackground
      ..tEqualsKeyShadow = ColorPalette.darkRedKeyShadow
      ..resetDelKeyBackground = ColorPalette.darkDesaturatedBlueKeyBackground
      ..resetDelKeyShadow = ColorPalette.darkDesaturatedBlueKeyShadow
      ..txtMain = ColorPalette.veryDarkgrayishBlue
      ..txt2 = ColorPalette.white;
  }

  // ignore: prefer_constructors_over_static_methods
  static AppTheme lightGrayTheme() {
    return AppTheme()
      ..mainBackground = ColorPalette.lightGrayMainBackground
      ..screenBackground = ColorPalette.veryLightGrayScreenBackground
      ..keyBackground = ColorPalette.lightGrayishYellowKeyBackground
      ..keyShadow = ColorPalette.darkGrayishOrangeKeyShadow
      ..tKBackgroundKey = ColorPalette.grayishRedTKBackground
      ..tEqualsKeyBackground = ColorPalette.orangeTKBackground
      ..tEqualsKeyShadow = ColorPalette.darkOrangeKeyShadow
      ..resetDelKeyBackground = ColorPalette.darkModeratedCyanKeyBackground
      ..resetDelKeyShadow = ColorPalette.veryDarCyanKeyShadow
      ..txtMain = ColorPalette.veryDarkgrayishYellow
      ..txt2 = ColorPalette.veryDarkgrayishYellow;
  }

  // ignore: prefer_constructors_over_static_methods
  static AppTheme darkVioletTheme() {
    return AppTheme()
      ..mainBackground = ColorPalette.veryDarkVioletMainBackground
      ..screenBackground = ColorPalette.veryDarkVioletTKS
      ..keyBackground = ColorPalette.veryDarkVioletKeyBackground
      ..keyShadow = ColorPalette.darkMagentaKeyShadow
      ..tKBackgroundKey = ColorPalette.veryDarkVioletTKS
      ..tEqualsKeyBackground = ColorPalette.pureCyanTKBackground
      ..tEqualsKeyShadow = ColorPalette.softCyanKeyShadow
      ..resetDelKeyBackground = ColorPalette.darkVioletKeyBackground
      ..resetDelKeyShadow = ColorPalette.vividMagentaKeyShadow
      ..txtMain = ColorPalette.lightYellow
      ..txt2 = ColorPalette.lightYellow;
  }

  static AppTheme of(PreferredThemeCubitState state) {
    if (state == PreferredThemeCubitState.desaturatedBlueTheme()) {
      return AppTheme.desaturatedBlueTheme();
    }
    if (state == PreferredThemeCubitState.lightGrayTheme()) {
      return AppTheme.lightGrayTheme();
    }
    return AppTheme.darkVioletTheme();
  }
}

// // Old Way of managing Theme
// class Themes {
//   static Map<PreferredTheme, ThemeData> themeData = {
//     PreferredTheme.desaturatedBlueTheme: desaturatedBlueTheme(),
//     PreferredTheme.lightGrayTheme: lightGrayTheme(),
//     PreferredTheme.darkVioletTheme: darkVioletTheme()
//   };

//   static ThemeData desaturatedBlueTheme() => ThemeData(
//      scaffoldBackgroundColor: ColorPalette.darkDesaturatedBlueMainBackground,
//         textTheme: TextTheme(
//           //For Text on , Screen, Keys and custom bar
//           displayLarge: TextStyle(
//             fontFamily: 'Spartan',
//             fontSize: 32,
//             fontWeight: FontWeight.w700,
//             color: ColorPalette.veryDarkgrayishBlue,
//           ),

//           //Reset and DEL button
//           displayMedium: TextStyle(
//             fontFamily: 'Spartan',
//             fontSize: 32,
//             fontWeight: FontWeight.w700,
//             color: ColorPalette.white,
//           ),
//         ),
//       );
//   static ThemeData lightGrayTheme() => ThemeData(
//         scaffoldBackgroundColor: ColorPalette.lightGrayMainBackground,
//         textTheme: TextTheme(
//           //For Text on , Screen, Keys and custom bar
//           displayLarge: TextStyle(
//             fontFamily: 'Spartan',
//             fontSize: 32,
//             fontWeight: FontWeight.w700,
//             color: ColorPalette.veryDarkgrayishYellow,
//           ),

//           //Reset and DEL button
//           displayMedium: TextStyle(
//             fontFamily: 'Spartan',
//             fontSize: 32,
//             fontWeight: FontWeight.w700,
//             color: ColorPalette.white,
//           ),
//         ),
//       );
//   static ThemeData darkVioletTheme() => ThemeData(
//         scaffoldBackgroundColor: ColorPalette.veryDarkVioletMainBackground,
//         textTheme: TextTheme(
//           //For Text on , Screen, Keys and custom bar
//           displayLarge: TextStyle(
//             fontFamily: 'Spartan',
//             fontSize: 32,
//             fontWeight: FontWeight.w700,
//             color: ColorPalette.lightYellow,
//           ),

//           //Reset and DEL button
//           displayMedium: TextStyle(
//             fontFamily: 'Spartan',
//             fontSize: 32,
//             fontWeight: FontWeight.w700,
//             color: ColorPalette.white,
//           ),
//         ),
//       );
// }
