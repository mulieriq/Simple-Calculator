import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

extension FinderExtension on WidgetTester {
  BuildContext findContextByKey(
    Key key, {
    Finder Function(Finder finder) selector = firstSelector,
  }) {
    final results = find.byKey(
      key,
    );
    return element(
      selector(results),
    );
  }

  BuildContext findContextByType(
    Type type, {
    Finder Function(Finder finder) selector = firstSelector,
  }) {
    final results = find.byType(
      type,
    );
    return element(
      selector(results),
    );
  }
}

void expectText({
  required String textData,
  required String key,
}) {
  final textFinder = find.byKey(Key(key));

  final text = textFinder.evaluate().first.widget as AutoSizeText;
  final currentText = text.data;

  expect(
    currentText,
    equals(
      textData,
    ),
  );
}

Finder firstSelector(Finder finder) {
  return finder.first;
}

void expectThemeColor({
  required Color colorData,
  required String key,
}) {
  final coloredBoxFinder = find.byKey(Key(key));

  final color = coloredBoxFinder.evaluate().first.widget as ColoredBox;

  final currentThemeColor = color.color;

  expect(
    currentThemeColor,
    equals(
      colorData,
    ),
  );
}
