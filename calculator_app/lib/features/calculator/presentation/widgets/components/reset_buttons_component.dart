import 'package:calculator_app/core/core.dart';
import 'package:flutter/material.dart';

class ResetButtonsComponent extends StatelessWidget {
  const ResetButtonsComponent({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: Constants.resetButtonList
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2.5,
                vertical: 5,
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: e == '='
                      ? state.equalAndToggleButtonThemeTransformer()
                      : state.deleteResetButtonThemeTransformer(),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 75,
                width: 150,
                child: Center(
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          e,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 25,
                                color: e == '=' &&
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
                          height: 4,
                          decoration: BoxDecoration(
                            color: e == 'RESET'
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
          )
          .toList(),
    );
  }
}
