import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/core/platform/state/orientation_cubit.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// The keypad
class CalculatorKeypad extends StatelessWidget {
  const CalculatorKeypad({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Container(
        margin: EdgeInsets.only(
          top: Adaptive.h(
            context.read<OrientationCubit>().isLandscape() ? 0 : 2,
          ),
        ),
        width: double.infinity,
        height: Adaptive.h(
          context.read<OrientationCubit>().isLandscape() ? 77 : 60,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: state.keyPadToggleThemeTransformer(),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          // Keypad buttons
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KeypadButtonComponent(state: state),
              ResetButtonsComponent(state: state),
            ],
          ),
        ),
      ),
    );
  }
}
