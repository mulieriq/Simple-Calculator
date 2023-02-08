import 'package:calculator_app/core/presentation/theme/color_palette.dart';
import 'package:flutter/material.dart';

enum PreferredTheme { desaturatedBlueTheme, lightGrayTheme, darkVioletTheme }

class Themes {
  static Map<PreferredTheme, ThemeData> themeData = {
    PreferredTheme.desaturatedBlueTheme: desaturatedBlueTheme(),
    PreferredTheme.lightGrayTheme: lightGrayTheme(),
    PreferredTheme.darkVioletTheme: darkVioletTheme()
  };

  static ThemeData desaturatedBlueTheme() => ThemeData(
        scaffoldBackgroundColor: ColorPalette.darkDesaturatedBlueMainBackground,
        textTheme: TextTheme(
          //For Text on , Screen, Keys and custom bar
          displayLarge: TextStyle(
            fontFamily: 'Spartan',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.darkDesaturatedBlueKeyBackground,
          ),

          //Reset and DEL button
          displayMedium: TextStyle(
            fontFamily: 'Spartan',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.white,
          ),
        ),
      );
  static ThemeData lightGrayTheme() => ThemeData(
        scaffoldBackgroundColor: ColorPalette.lightGrayMainBackground,
        textTheme: TextTheme(
          //For Text on , Screen, Keys and custom bar
          displayLarge: TextStyle(
            fontFamily: 'Spartan',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.veryDarkgrayishYellow,
          ),

          //Reset and DEL button
          displayMedium: TextStyle(
            fontFamily: 'Spartan',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.white,
          ),
        ),
      );
  static ThemeData darkVioletTheme() => ThemeData(
        scaffoldBackgroundColor: ColorPalette.veryDarkVioletMainBackground,
        textTheme: TextTheme(
          //For Text on , Screen, Keys and custom bar
          displayLarge: TextStyle(
            fontFamily: 'Spartan',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.lightYellow,
          ),

          //Reset and DEL button
          displayMedium: TextStyle(
            fontFamily: 'Spartan',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.white,
          ),
        ),
      );
}
