import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/core/platform/state/orientation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// Toogle theme component
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
        color: AppTheme.of(state).tKBackgroundKey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: PreferredTheme.values
            .map(
              (preferredTheme) => GestureDetector(
                key: Key(preferredTheme.toString()),
                onTap: () => context.read<PreferredThemeCubit>().updateTheme(
                      preferredTheme,
                    ),
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  margin: EdgeInsets.all(Adaptive.h(.2)),
                  width: Adaptive.w(
                    context.read<OrientationCubit>().isLandscape() ? 4.5 : 4.5,
                  ),
                  height: Adaptive.h(
                    context.read<OrientationCubit>().isLandscape() ? 5 : 2.2,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: state ==
                            PreferredThemeCubitState(
                              theme: preferredTheme,
                            )
                        ? AppTheme.of(state).tEqualsKeyBackground
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
