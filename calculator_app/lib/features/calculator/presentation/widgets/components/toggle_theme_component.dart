import 'package:calculator_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleThemeComponent extends StatelessWidget {
  const ToggleThemeComponent({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: state.keyPadToggleThemeTransformer(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: PreferredTheme.values
            .map(
              (preferredTheme) => GestureDetector(
                onTap: () => context.read<PreferredThemeCubit>().updateTheme(
                      preferredTheme,
                    ),
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  margin: const EdgeInsets.all(2),
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: state ==
                            PreferredThemeCubitState(
                              theme: preferredTheme,
                            )
                        ? state.equalAndToggleButtonThemeTransformer()
                        : Colors.transparent,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
