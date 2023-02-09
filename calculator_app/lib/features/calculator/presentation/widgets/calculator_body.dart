import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// Hold all components of the calculator
class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key, required this.state});
  final PreferredThemeCubitState state;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalculatorSizedBox(
          height: Adaptive.h(2),
        ),
        CalculatorHeader(state: state),
        CalculatorSizedBox(
          height: Adaptive.h(2),
        ),
        CalculatorScreen(state: state),
        CalculatorKeypad(state: state)
      ],
    );
  }
}
