import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
                horizontal: 4,
                vertical: 5,
              ),
              child: InkWell(
                onTap: () => context.read<CalculatorCubit>().keyPressed(key: e),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: e == 'DEL'
                        ? state.deleteResetButtonThemeTransformer()
                        : state.keyPadButtonThemeTransformer(),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  height: Adaptive.h(9.5),
                  width: Adaptive.w(19),
                  child: Stack(
                    children: [
                      Center(
                        child: AutoSizeText(
                          e,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                color: e == 'DEL' ? ColorPalette.white : null,
                                fontSize: e == 'DEL' ? 20 : null,
                              ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: Adaptive.h(.6),
                          decoration: BoxDecoration(
                            color: e == 'DEL'
                                ? state
                                    .deleteResetButtonShadowThemeTransformer()
                                : state
                                    .keyPadNumberButtonShadowThemeTransformer(),
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
