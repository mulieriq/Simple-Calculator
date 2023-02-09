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
    'ThemeTranformerExtenstion',
    () {
      group(
        'screeThemeTransformer',
        () {
          blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
            'screeThemeTransformer returns '
            '$ColorPalette.darkDesaturatedBlueScreenBackground '
            'when theme is $PreferredTheme.desaturatedBlueTheme',
            build: PreferredThemeCubit.new,
            act: (bloc) =>
                bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
            verify: (bloc) {
              final color = bloc.state.screeThemeTransformer();
              expect(color, ColorPalette.darkDesaturatedBlueScreenBackground);
            },
          );

          blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
            'screeThemeTransformer returns '
            '$ColorPalette.veryDarkVioletTKS '
            'when theme is $PreferredTheme.darkVioletTheme',
            build: PreferredThemeCubit.new,
            act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
            verify: (bloc) {
              final color = bloc.state.screeThemeTransformer();
              expect(color, ColorPalette.veryDarkVioletTKS);
            },
          );

          group('keyPadToggleThemeTransformer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'keyPadToggleThemeTransformer returns '
              '$ColorPalette.darkDesaturatedBlueTKBackground '
              'when theme is $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color = bloc.state.keyPadToggleThemeTransformer();
                expect(color, ColorPalette.darkDesaturatedBlueTKBackground);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'keyPadToggleThemeTransformer returns '
              '$ColorPalette.darkDesaturatedBlueTKBackground '
              'when theme is $PreferredTheme.darkVioletTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
              verify: (bloc) {
                final color = bloc.state.keyPadToggleThemeTransformer();
                expect(color, ColorPalette.veryDarkVioletTKS);
              },
            );
          });

          group('equalAndToggleButtonThemeTransformer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'equalAndToggleButtonThemeTransformer returns '
              '$ColorPalette.redTKBackground '
              'when theme is $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color = bloc.state.equalAndToggleButtonThemeTransformer();
                expect(color, ColorPalette.redTKBackground);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'keyPadToggleThemeTransformer returns '
              '$ColorPalette.pureCyanTKBackground '
              'when theme is $PreferredTheme.darkVioletTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
              verify: (bloc) {
                final color = bloc.state.equalAndToggleButtonThemeTransformer();
                expect(color, ColorPalette.pureCyanTKBackground);
              },
            );
          });
          group('deleteResetButtonThemeTransformer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'deleteResetButtonThemeTransformer returns '
              '$ColorPalette.darkDesaturatedBlueKeyBackground '
              'when theme is $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color = bloc.state.deleteResetButtonThemeTransformer();
                expect(color, ColorPalette.darkDesaturatedBlueKeyBackground);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'deleteResetButtonThemeTransformer returns '
              '$ColorPalette.darkVioletKeyBackground '
              'when theme is $PreferredTheme.darkVioletTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
              verify: (bloc) {
                final color = bloc.state.deleteResetButtonThemeTransformer();
                expect(color, ColorPalette.darkVioletKeyBackground);
              },
            );
          });
          group('keyPadButtonThemeTransformer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'keyPadButtonThemeTransformer returns '
              '$ColorPalette.lightGrayishOrangeKeyBackground '
              'when theme is $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color = bloc.state.keyPadButtonThemeTransformer();
                expect(color, ColorPalette.lightGrayishOrangeKeyBackground);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'keyPadButtonThemeTransformer returns '
              '$ColorPalette.veryDarkVioletKeyBackground '
              'when theme is $PreferredTheme.darkVioletTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
              verify: (bloc) {
                final color = bloc.state.keyPadButtonThemeTransformer();
                expect(color, ColorPalette.veryDarkVioletKeyBackground);
              },
            );
          });
          group('keyPadNumberButtonShadowThemeTransformer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'keyPadNumberButtonShadowThemeTransformer returns '
              '$ColorPalette.darkDesaturatedBlueTKBackground '
              'when theme is $PreferredTheme.grayishOrangeKeyShadow',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color =
                    bloc.state.keyPadNumberButtonShadowThemeTransformer();
                expect(color, ColorPalette.grayishOrangeKeyShadow);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'keyPadNumberButtonShadowThemeTransformer returns '
              '$ColorPalette.darkMagentaKeyShadow '
              'when theme is $PreferredTheme.darkVioletTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
              verify: (bloc) {
                final color =
                    bloc.state.keyPadNumberButtonShadowThemeTransformer();
                expect(color, ColorPalette.darkMagentaKeyShadow);
              },
            );
          });
          group('deleteResetButtonShadowThemeTransformer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'deleteResetButtonShadowThemeTransformer returns '
              '$ColorPalette.darkDesaturatedBlueKeyShadow '
              'when theme is $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color =
                    bloc.state.deleteResetButtonShadowThemeTransformer();
                expect(color, ColorPalette.darkDesaturatedBlueKeyShadow);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'deleteResetButtonShadowThemeTransformer returns '
              '$ColorPalette.vividMagentaKeyShadow '
              'when theme is $PreferredTheme.darkVioletTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
              verify: (bloc) {
                final color =
                    bloc.state.deleteResetButtonShadowThemeTransformer();
                expect(color, ColorPalette.vividMagentaKeyShadow);
              },
            );
          });
          group('equalButtonShadowThemeTransformer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'equalButtonShadowThemeTransformer returns '
              '$ColorPalette.darkRedKeyShadow '
              'when theme is $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color = bloc.state.equalButtonShadowThemeTransformer();
                expect(color, ColorPalette.darkRedKeyShadow);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'equalButtonShadowThemeTransformer returns '
              '$ColorPalette.softCyanKeyShadow '
              'when theme is $PreferredTheme.darkVioletTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) => bloc.updateTheme(PreferredTheme.darkVioletTheme),
              verify: (bloc) {
                final color = bloc.state.equalButtonShadowThemeTransformer();
                expect(color, ColorPalette.softCyanKeyShadow);
              },
            );
          });

          group('theme1TextColorTranfromer', () {
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'theme1TextColorTranfromer returns '
              '$ColorPalette.white '
              'when theme is $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color = bloc.state.theme1TextColorTranfromer();
                expect(color, ColorPalette.white);
              },
            );
            blocTest<PreferredThemeCubit, PreferredThemeCubitState>(
              'theme1TextColorTranfromer returns '
              'null'
              'when theme is other than $PreferredTheme.desaturatedBlueTheme',
              build: PreferredThemeCubit.new,
              act: (bloc) =>
                  bloc.updateTheme(PreferredTheme.desaturatedBlueTheme),
              verify: (bloc) {
                final color = bloc.state.theme1TextColorTranfromer();
                expect(color, isA<void>());
              },
            );
          });
        },
      );
    },
  );
}
