import 'package:bloc_test/bloc_test.dart';
import 'package:calculator_app/core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/mocks.dart';

void main() {
  late Storage storage;

  setUp(() {
    storage = MockStorage();
    when(
      () => storage.write(any(), any<dynamic>()),
    ).thenAnswer((_) async {});
    HydratedBloc.storage = storage;
  });
  group(
    'PreferredThemeCubit',
    () {
      group(
        'updateTheme',
        () {
          blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
            'updateTheme emits '
            '$PreferredThemeCubitState.desaturatedBlueTheme()'
            'when theme is $PreferredTheme.desaturatedBlueTheme',
            build: PreferredThemeCubit.new,
            act: (bloc) =>
                bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
            expect: () => <PreferredThemeCubitState>[
              PreferredThemeCubitState.desaturatedBlueTheme()
            ],
          );

          blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
            'updateTheme emits '
            '$PreferredThemeCubitState.lightGrayTheme()'
            'when theme is $PreferredTheme.lightGrayTheme',
            build: PreferredThemeCubit.new,
            act: (bloc) => bloc.updateTheme(PreferredTheme.lightGrayTheme),
            expect: () => <PreferredThemeCubitState>[
              PreferredThemeCubitState.lightGrayTheme()
            ],
          );
          blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
            'updateTheme emits '
            '$PreferredThemeCubitState.darkVioletTheme()'
            'when theme is $PreferredTheme.darkVioletTheme',
            build: PreferredThemeCubit.new,
            act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
            expect: () => <PreferredThemeCubitState>[
              PreferredThemeCubitState.darkVioletTheme()
            ],
          );
        },
      );
    },
  );
}
