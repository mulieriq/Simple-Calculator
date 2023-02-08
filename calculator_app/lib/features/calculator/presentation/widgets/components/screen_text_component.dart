import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenText extends StatelessWidget {
  const ScreenText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CalculatorCubit cubit) => cubit.state);
    return Text(
      '399,981',
      style: theme.textTheme.displayLarge!.copyWith(
        fontSize: 40,
        color: context
            .read<PreferredThemeCubit>()
            .state
            .theme1TextColorTranfromer(),
      ),
    );
  }
}
