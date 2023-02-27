import 'package:calculator_app/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$AppTheme', () {
    test(
      '.desaturatedBlueTheme() should  return '
      'ColorPalette.darkDesaturatedBlueMainBackground as the scaffold color '
      'ColorPalette.veryDarkgrayishBlue as the displayLarge textColor ',
      () async {
        // arrange

        final theme = AppTheme.desaturatedBlueTheme();

        // act
        // assert
        expect(
          theme.mainBackground,
          equals(
            ColorPalette.darkDesaturatedBlueMainBackground,
          ),
        );

        expect(
          theme.txtMain,
          equals(
            ColorPalette.veryDarkgrayishBlue,
          ),
        );
      },
    );

    test(
      '.lightGrayTheme() should  return '
      'ColorPalette.lightGrayMainBackground as the scaffold color '
      'ColorPalette.veryDarkgrayishYellow as the displayLarge textColor ',
      () async {
        // arrange

        final theme = AppTheme.lightGrayTheme();

        // act
        // assert
        expect(
          theme.mainBackground,
          equals(
            ColorPalette.lightGrayMainBackground,
          ),
        );

        expect(
          theme.txtMain,
          equals(
            ColorPalette.veryDarkgrayishYellow,
          ),
        );
      },
    );

    test(
      '.darkVioletTheme() should  return '
      'ColorPalette.veryDarkVioletMainBackground as the scaffold color '
      'ColorPalette.lightYellow as the displayLarge textColor ',
      () async {
        // arrange

        final theme = AppTheme.darkVioletTheme();

        // act
        // assert
        expect(
          theme.mainBackground,
          equals(
            ColorPalette.veryDarkVioletMainBackground,
          ),
        );

        expect(
          theme.txtMain,
          equals(
            ColorPalette.lightYellow,
          ),
        );
      },
    );
  });
}
