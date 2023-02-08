import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResetButtonsComponent extends StatelessWidget {
  const ResetButtonsComponent({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: Constants.resetButtonList
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
                vertical: 5,
              ),
              child: InkWell(
                onTap: () => context.read<CalculatorCubit>().keyPressed(key: e),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: e == Constants.kEqualButton
                        ? state.equalAndToggleButtonThemeTransformer()
                        : state.deleteResetButtonThemeTransformer(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: Adaptive.h(9.5),
                  width: Adaptive.w(39),
                  child: Center(
                    child: Stack(
                      children: [
                        Center(
                          child: AutoSizeText(
                            e,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 25,
                                  color: e == Constants.kEqualButton &&
                                          state ==
                                              PreferredThemeCubitState
                                                  .darkVioletTheme()
                                      ? ColorPalette.veryDarkBlue
                                      : ColorPalette.white,
                                ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: Adaptive.h(.6),
                            decoration: BoxDecoration(
                              color: e == Constants.kResetButton
                                  ? state
                                      .deleteResetButtonShadowThemeTransformer()
                                  : state.equalButtonShadowThemeTransformer(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
