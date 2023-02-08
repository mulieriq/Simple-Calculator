import 'package:flutter/material.dart';

class SizeConfig {
  const SizeConfig({required this.context});
  static const double padding2 = 2;
  static const double padding4 = 4;
  static const double padding8 = 8;
  static const double padding12 = 12;
  static const double padding16 = 16;
  static const double padding20 = 20;
  static const double padding24 = 24;
  static const double padding30 = 30;

  final BuildContext context;
  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;
  bool get isWiderWidth => MediaQuery.of(context).size.height > 700;
  bool get maxPhoneHeight => MediaQuery.of(context).size.height > 600;
  double get onboardButtonWidth => screenWidth < 430 ? 370 : 190;
  double get size35HeightScaled => screenHeight * 0.0385;
  double get size45HeightScaled => screenHeight * 0.0516;
  double get size20HeightScaled => screenHeight * 0.0245;
  double get size15HeightScaled => screenHeight * 0.0176;
  double get size18HeightScaled => screenHeight * 0.022;
  double get size70HeightScaled => screenHeight * 0.084;
  double get size50HeightScaled => screenHeight * 0.061;
  double get size25HeightScaled => screenHeight * 0.031;

  double heightScaledSize(double size) {
    if (screenHeight >= 700 && screenWidth >= 400) {
      return size;
    }
    if (screenHeight >= 500 && screenWidth > 350) {
      return size * 0.8;
    }

    return size * 0.6;
  }
}
