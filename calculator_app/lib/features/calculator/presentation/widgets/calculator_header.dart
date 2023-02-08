import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';

class CalculatorHeader extends StatelessWidget {
  const CalculatorHeader({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Constants.kTtitle,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 35,
                color: state.theme1TextColorTranfromer(),
              ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Constants.kThemeText,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 15,
                    color: state.theme1TextColorTranfromer(),
                  ),
            ),
            const CalculatorSizedBox(
              width: 8,
            ),
            CalculatorSizedBox(
              width: 80,
              child: Column(
                children: [
                  PreferredThemeNumberComponent(state: state),
                  ToggleThemeComponent(state: state)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
