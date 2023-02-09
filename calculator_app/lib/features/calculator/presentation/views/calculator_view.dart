import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Calculator Screen
class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreferredThemeCubit, PreferredThemeCubitState>(
      builder: (context, state) => AnnotatedRegion<SystemUiOverlayStyle>(
        // updates status bar and status bar icons in reference with the theme
        value: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).scaffoldBackgroundColor,
          statusBarIconBrightness: state ==
                  PreferredThemeCubitState(theme: PreferredTheme.lightGrayTheme)
              ? Brightness.dark
              : Brightness.light,
        ),
        child: SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: CalculatorBody(
                state: state,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
