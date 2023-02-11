import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/core/platform/state/orientation_cubit.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// Hold all components of the calculator
class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key, required this.state});
  final PreferredThemeCubitState state;
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        context.read<OrientationCubit>().updateOrientation(orientation);
        return orientation == Orientation.portrait
            ? Portrait(
                state: state,
              )
            : Landscape(state: state);
      },
    );
  }
}

class Portrait extends StatelessWidget {
  const Portrait({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalculatorSizedBox(
          height: Adaptive.h(
            2,
          ),
        ),
        CalculatorHeader(state: state),
        CalculatorSizedBox(
          height: Adaptive.h(2),
        ),
        CalculatorScreen(state: state),
        Hero(
          tag: const Key('cpad'),
          child: CalculatorKeypad(state: state),
        )
      ],
    );
  }
}

class Landscape extends StatelessWidget {
  const Landscape({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalculatorSizedBox(
          height: Adaptive.h(
            2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalculatorSizedBox(
              width: Adaptive.w(40),
              child: Column(
                children: [
                  CalculatorHeader(state: state),
                  CalculatorSizedBox(
                    height: Adaptive.h(2),
                  ),
                  CalculatorScreen(state: state),
                  CalculatorSizedBox(
                    height: Adaptive.h(
                      13,
                    ),
                  )
                ],
              ),
            ),
            CalculatorSizedBox(
              width: Adaptive.h(
                2,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CalculatorKeypad(
                    state: state,
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
