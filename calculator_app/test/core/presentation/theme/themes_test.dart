import 'package:calculator_app/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$Themes', () {
    test(
      '.desaturatedBlueTheme() should  return '
      'ColorPalette.darkDesaturatedBlueMainBackground as the scaffold color '
      'Spartan as the displayLarge FontFamily '
      'ColorPalette.veryDarkgrayishBlue as the displayLarge textColor ',
      () async {
        // arrange

        final theme = Themes.desaturatedBlueTheme();

        // act
        // assert
        expect(
          theme.scaffoldBackgroundColor,
          equals(
            ColorPalette.darkDesaturatedBlueMainBackground,
          ),
        );

        expect(
          theme.textTheme.displayLarge?.fontFamily,
          equals(
            'Spartan',
          ),
        );

        expect(
          theme.textTheme.displayLarge?.color,
          equals(
            ColorPalette.veryDarkgrayishBlue,
          ),
        );
      },
    );

    test(
      '.lightGrayTheme() should  return '
      'ColorPalette.lightGrayMainBackground as the scaffold color '
      'Spartan as the displayLarge FontFamily '
      'ColorPalette.veryDarkgrayishYellow as the displayLarge textColor ',
      () async {
        // arrange

        final theme = Themes.lightGrayTheme();

        // act
        // assert
        expect(
          theme.scaffoldBackgroundColor,
          equals(
            ColorPalette.lightGrayMainBackground,
          ),
        );

        expect(
          theme.textTheme.displayLarge?.fontFamily,
          equals(
            'Spartan',
          ),
        );

        expect(
          theme.textTheme.displayLarge?.color,
          equals(
            ColorPalette.veryDarkgrayishYellow,
          ),
        );
      },
    );

    test(
      '.darkVioletTheme() should  return '
      'ColorPalette.veryDarkVioletMainBackground as the scaffold color '
      'Spartan as the displayLarge FontFamily '
      'ColorPalette.lightYellow as the displayLarge textColor ',
      () async {
        // arrange

        final theme = Themes.darkVioletTheme();

        // act
        // assert
        expect(
          theme.scaffoldBackgroundColor,
          equals(
            ColorPalette.veryDarkVioletMainBackground,
          ),
        );

        expect(
          theme.textTheme.displayLarge?.fontFamily,
          equals(
            'Spartan',
          ),
        );

        expect(
          theme.textTheme.displayLarge?.color,
          equals(
            ColorPalette.lightYellow,
          ),
        );
      },
    );
  });
}
