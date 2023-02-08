import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness: context.read<PreferredThemeCubit>().state ==
                PreferredThemeCubitState(theme: PreferredTheme.lightGrayTheme)
            ? Brightness.dark
            : Brightness.light,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'calc',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 35),
                    ),
                    const Spacer(),
                    BlocBuilder<PreferredThemeCubit, PreferredThemeCubitState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'THEME',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 15),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '1',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 15),
                                      ),
                                      Text(
                                        '2',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 15),
                                      ),
                                      Text(
                                        '3',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: () => context
                                              .read<PreferredThemeCubit>()
                                              .updateTheme(
                                                PreferredTheme
                                                    .desaturatedBlueTheme,
                                              ),
                                          child: GestureDetector(
                                            onTap: () => context
                                                .read<PreferredThemeCubit>()
                                                .updateTheme(
                                                  PreferredTheme
                                                      .desaturatedBlueTheme,
                                                ),
                                            child: AnimatedContainer(
                                              duration: const Duration(
                                                seconds: 1,
                                              ),
                                              margin: const EdgeInsets.all(2),
                                              width: 18,
                                              height: 18,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: state ==
                                                        PreferredThemeCubitState
                                                            .desaturatedBlueTheme()
                                                    ? Colors.red
                                                    : Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => context
                                              .read<PreferredThemeCubit>()
                                              .updateTheme(
                                                PreferredTheme.lightGrayTheme,
                                              ),
                                          child: AnimatedContainer(
                                            duration: const Duration(
                                              seconds: 1,
                                            ),
                                            margin: const EdgeInsets.all(2),
                                            width: 18,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: state ==
                                                      PreferredThemeCubitState
                                                          .lightGrayTheme()
                                                  ? Colors.red
                                                  : Colors.transparent,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => context
                                              .read<PreferredThemeCubit>()
                                              .updateTheme(
                                                PreferredTheme.darkVioletTheme,
                                              ),
                                          child: AnimatedContainer(
                                            duration: const Duration(
                                              seconds: 1,
                                            ),
                                            margin: const EdgeInsets.all(2),
                                            width: 18,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: state ==
                                                      PreferredThemeCubitState
                                                          .darkVioletTheme()
                                                  ? Colors.red
                                                  : Colors.transparent,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: ScreenText(),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            '7',
                            '8',
                            '9',
                            'DEL',
                            '4',
                            '5',
                            '6',
                            '+',
                            '1',
                            '2',
                            '3',
                            '-',
                            '.',
                            '0',
                            '/',
                            'x'
                          ]
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2.5,
                                    vertical: 5,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 75,
                                    width: 75,
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                              fontSize: e == 'DEL' ? 20 : null,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            'RESET',
                            '=',
                          ]
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2.5,
                                    vertical: 5,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 75,
                                    width: 150,
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
