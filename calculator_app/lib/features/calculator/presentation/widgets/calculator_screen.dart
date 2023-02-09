import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/features.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      height: Adaptive.h(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: state.screeThemeTransformer(),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: ScreenText(state: state),
        ),
      ),
    );
  }
}
