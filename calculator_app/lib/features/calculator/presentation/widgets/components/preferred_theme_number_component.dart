import 'package:calculator_app/core/core.dart';
import 'package:flutter/material.dart';

class PreferredThemeNumberComponent extends StatelessWidget {
  const PreferredThemeNumberComponent({
    super.key,
    required this.state,
  });

  final PreferredThemeCubitState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: Constants.kPreferedThemeLevel
          .map(
            (number) => Text(
              number,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 15,
                    color: state.theme1TextColorTranfromer(),
                  ),
            ),
          )
          .toList(),
    );
  }
}
