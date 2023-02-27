import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Result and computation screen
class ScreenText extends StatelessWidget {
  const ScreenText({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CalculatorCubit cubit) => cubit.state);
    return AutoSizeText(
      count,
      key: const Key('screen_text'),
      style: theme.textTheme.displayLarge!.copyWith(
        fontSize: 40,
        color: AppTheme.of(state).txt2,
      ),
    );
  }
}
