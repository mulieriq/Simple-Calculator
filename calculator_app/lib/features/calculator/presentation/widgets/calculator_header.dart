import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        AutoSizeText(
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
            AutoSizeText(
              Constants.kThemeText,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 15,
                    color: state.theme1TextColorTranfromer(),
                  ),
            ),
            CalculatorSizedBox(
              width: Adaptive.w(2),
            ),
            CalculatorSizedBox(
              width: Adaptive.w(18),
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
