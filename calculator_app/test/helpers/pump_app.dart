import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      ResponsiveSizer(
        builder: (context, orientation, screenType) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => PreferredThemeCubit(),
            ),
            BlocProvider(
              create: (context) => CalculatorCubit(),
            ),
          ],
          child: BlocBuilder<PreferredThemeCubit, PreferredThemeCubitState>(
            builder: (context, state) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: Themes.themeData[state.theme],
              home: widget,
            ),
          ),
        ),
      ),
    );
  }
}
