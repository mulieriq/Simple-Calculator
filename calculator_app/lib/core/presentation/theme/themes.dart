import 'package:calculator_app/core/presentation/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum PreferredTheme { desaturatedBlueTheme, lightGrayTheme, darkVioletTheme }

class Themes {
    static Map<PreferredTheme, ThemeData> themeData = {
    PreferredTheme.desaturatedBlueTheme: desaturatedBlueTheme(),
    PreferredTheme.lightGrayTheme: lightGrayTheme(),
    PreferredTheme.darkVioletTheme: darkVioletTheme()
  };

  static ThemeData desaturatedBlueTheme() => ThemeData(
        brightness: Brightness.dark,
        primaryColor: ColorPalette.darkDesaturatedBlueMainBackground,
        textTheme: TextTheme(
          //For Text on , Screen, Keys and custom bar
          displayLarge: GoogleFonts.leagueSpartan(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.darkDesaturatedBlueKeyBackground,
          ),

          //Reset and DEL button
          displayMedium: GoogleFonts.leagueSpartan(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.white,
          ),
        ),
      );
  static ThemeData lightGrayTheme() => ThemeData(
        brightness: Brightness.dark,
        primaryColor: ColorPalette.lightGrayMainBackground,
        textTheme: TextTheme(
          //For Text on , Screen, Keys and custom bar
          displayLarge: GoogleFonts.leagueSpartan(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.veryDarkgrayishYellow,
          ),

          //Reset and DEL button
          displayMedium: GoogleFonts.leagueSpartan(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.white,
          ),
        ),
      );
  static ThemeData darkVioletTheme() => ThemeData(
        brightness: Brightness.dark,
        primaryColor: ColorPalette.veryDarkVioletMainBackground,
        textTheme: TextTheme(
          //For Text on , Screen, Keys and custom bar
          displayLarge: GoogleFonts.leagueSpartan(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.lightYellow,
          ),

          //Reset and DEL button
          displayMedium: GoogleFonts.leagueSpartan(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ColorPalette.white,
          ),
        ),
      );
}
