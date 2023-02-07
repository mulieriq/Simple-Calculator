import 'package:calculator_app/core/presentation/state/theme_cubit/preferred_theme_cubit.dart';
import 'package:calculator_app/core/presentation/theme/themes.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
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
          home: const CalculatorView(),
        ),
      ),
    );
  }
}
