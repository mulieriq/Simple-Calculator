import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/core/platform/state/orientation_cubit.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// Calculator Header
class CalculatorHeader extends StatelessWidget {
  const CalculatorHeader({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    // Calc lable
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          Constants.kTtitle,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 35,
                color: AppTheme.of(state).txt2,
              ),
        ),
        const Spacer(),
        // Theme Controls
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AutoSizeText(
              Constants.kThemeText,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 15,
                    color: AppTheme.of(state).txt2,
                  ),
            ),
            CalculatorSizedBox(
              width: Adaptive.w(2),
            ),
            CalculatorSizedBox(
              width: Adaptive.w(
                context.read<OrientationCubit>().isLandscape() ? 15 : 18,
              ),
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
