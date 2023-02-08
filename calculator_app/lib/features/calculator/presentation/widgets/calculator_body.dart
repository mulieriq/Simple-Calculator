import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';

class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key, required this.state});
  final PreferredThemeCubitState state;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CalculatorSizedBox(
          height: 15,
        ),
        CalculatorHeader(state: state),
        const CalculatorSizedBox(
          height: 15,
        ),
        CalculatorScreen(state: state),
        CalculatorKeypad(state: state)
      ],
    );
  }
}
