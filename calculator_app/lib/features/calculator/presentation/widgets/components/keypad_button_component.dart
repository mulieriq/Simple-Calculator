import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/core/platform/state/orientation_cubit.dart';
import 'package:calculator_app/features/calculator/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// Key pad Buttons
class KeypadButtonComponent extends StatelessWidget {
  const KeypadButtonComponent({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: (context.read<OrientationCubit>().isLandscape()
              ? Constants.kKeypadElementsLND
              : Constants.kKeypadElements)
          .map(
            (key) => Padding(
              key: Key(key),
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 5,
              ),
              child: InkWell(
                onTap: () =>
                    context.read<CalculatorCubit>().keyPressed(key: key),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: key == Constants.kDeleteButton
                        ? AppTheme.of(state).resetDelKeyBackground
                        : AppTheme.of(state).keyBackground,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  height: context.read<OrientationCubit>().isLandscape()
                      ? Adaptive.h(15)
                      : Adaptive.h(10.5),
                  width: context.read<OrientationCubit>().isLandscape()
                      ? Adaptive.h(16)
                      : Adaptive.w(19),
                  child: Stack(
                    children: [
                      Center(
                        child: AutoSizeText(
                          key,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                color: key == Constants.kDeleteButton
                                    ? ColorPalette.white
                                    : null,
                                fontSize:
                                    key == Constants.kDeleteButton ? 20 : null,
                              ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: Adaptive.h(.6),
                          decoration: BoxDecoration(
                            color: key == Constants.kDeleteButton
                                ? AppTheme.of(state).resetDelKeyShadow
                                : AppTheme.of(state).keyShadow,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
