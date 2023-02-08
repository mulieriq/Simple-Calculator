import 'package:calculator_app/core/core.dart';
import 'package:flutter/material.dart';

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
      children: Constants.kKeypadElements
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2.5,
                vertical: 5,
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: e == 'DEL'
                      ? state.deleteResetButtonThemeTransformer()
                      : state.keyPadButtonThemeTransformer(),
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 75,
                width: 75,
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        e,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: e == 'DEL' ? ColorPalette.white : null,
                                  fontSize: e == 'DEL' ? 20 : null,
                                ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: e == 'DEL'
                              ? state.deleteResetButtonShadowThemeTransformer()
                              : state
                                  .keyPadNumberButtonShadowThemeTransformer(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
