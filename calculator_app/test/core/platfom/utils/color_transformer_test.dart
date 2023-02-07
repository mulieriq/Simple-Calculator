import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/core/presentation/theme/color_palette.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final darkDesaturatedBlueMainBackground =
      ColorPalette.darkDesaturatedBlueMainBackground;
  test(
    'colorTransformer should return an equal color as provided HSL',
    () async {
      // arrange

      final testColorTransformer = colorTransformer(222, 26, 31);

      expect(darkDesaturatedBlueMainBackground, isA<Color>());
      expect(testColorTransformer, isA<Color>());
      expect(darkDesaturatedBlueMainBackground, equals(testColorTransformer));
    },
  );

  test(
    'colorTransformer should fail when there is a difference '
    'in HSL Color provided',
    () async {
      // arrange

      final testColorTransformer = colorTransformer(223, 26, 31);

      expect(darkDesaturatedBlueMainBackground, isA<Color>());
      expect(testColorTransformer, isA<Color>());
      expect(
        darkDesaturatedBlueMainBackground != testColorTransformer,
        true,
      );
    },
  );
}
