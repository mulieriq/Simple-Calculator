import 'package:calculator_app/core/platform/l10n/l10n.dart';
import 'package:calculator_app/core/presentation/state/theme_cubit/preferred_theme_cubit.dart';
import 'package:calculator_app/core/presentation/theme/themes.dart';
import 'package:calculator_app/features/counter/counter.dart';
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
          create: (context) => CounterCubit(),
        ),
      ],
      child: BlocBuilder<PreferredThemeCubit, PreferredThemeCubitState>(
        builder: (context, state) => MaterialApp(
          theme: Themes.themeData[state.theme],
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const CounterPage(),
        ),
      ),
    );
  }
}
