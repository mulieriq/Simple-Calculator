import 'package:bloc_test/bloc_test.dart';
import 'package:calculator_app/core/core.dart';
import 'package:calculator_app/features/calculator/calculator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockPreferredThemeCubit extends MockCubit<PreferredThemeCubitState>
    implements PreferredThemeCubit {}

void main() {
  late Storage storage;

  setUp(() {
    storage = MockStorage();
    when(
      () => storage.write(any(), any<dynamic>()),
    ).thenAnswer((_) async {});
    HydratedBloc.storage = storage;
  });
  group('CounterPage', () {
    testWidgets('renders CounterView', (tester) async {
      await tester.pumpApp(const CalculatorView());
      expect(find.byType(CalculatorView), findsOneWidget);
    });
  });

  group('CounterView', () {
    final number7 = find.byKey(const Key('7'));
    final number2 = find.byKey(const Key('2'));
    final add = find.byKey(const Key('+'));
    final results = find.byKey(const Key('='));

    testWidgets('renders initial theme', (tester) async {
      await tester.pumpApp(
        const CalculatorView(),
      );

      final calculatorViewContext = tester.findContextByType(CalculatorView);

      expect(
        Theme.of(calculatorViewContext).scaffoldBackgroundColor,
        equals(ColorPalette.darkDesaturatedBlueMainBackground),
      );
    });

    testWidgets('can change theme when toggle buttons are pressed',
        (tester) async {
      await tester.pumpApp(
        const CalculatorView(),
      );

      final calculatorViewContext = tester.findContextByType(CalculatorView);

      final theme2toggleButton =
          find.byKey(Key(PreferredTheme.lightGrayTheme.toString()));

      await tester.tap(theme2toggleButton);

      await tester.pumpAndSettle();

      expect(
        Theme.of(calculatorViewContext).scaffoldBackgroundColor,
        equals(ColorPalette.lightGrayMainBackground),
      );
    });

    testWidgets('screen displays correct numbers', (tester) async {
      await tester.pumpApp(
        const CalculatorView(),
      );

      await tester.tap(number7);
      await tester.tap(number2);
      await tester.pumpAndSettle();

      expectText(key: 'screen_text', textData: '72');
    });

    testWidgets('screen displays correct numbers when DEL is pressed',
        (tester) async {
      await tester.pumpApp(
        const CalculatorView(),
      );

      final del = find.byKey(const Key('DEL'));

      await tester.tap(number7);
      await tester.tap(number2);
      await tester.tap(del);
      await tester.pumpAndSettle();

      expectText(key: 'screen_text', textData: '7');
    });

    testWidgets('screen displays 0 numbers when RESET  is pressed',
        (tester) async {
      await tester.pumpApp(
        const CalculatorView(),
      );

      final reset = find.byKey(const Key('RESET'));

      await tester.tap(number7);
      await tester.tap(number2);
      await tester.tap(reset);
      await tester.pumpAndSettle();

      expectText(key: 'screen_text', textData: '0');
    });

    testWidgets(
        'screen displays MATH ERROR numbers when in valid computation  '
        'is performed', (tester) async {
      await tester.pumpApp(
        const CalculatorView(),
      );

      await tester.tap(number7);
      await tester.tap(add);
      await tester.tap(add);
      await tester.tap(number2);
      await tester.tap(results);
      await tester.pumpAndSettle();

      expectText(key: 'screen_text', textData: Constants.kMathError);
    });

    testWidgets('screen displays 9 numbers when in = pressed  ',
        (tester) async {
      await tester.pumpApp(
        const CalculatorView(),
      );

      await tester.tap(number7);
      await tester.tap(add);
      await tester.tap(number2);
      await tester.tap(results);
      await tester.pumpAndSettle();

      expectText(key: 'screen_text', textData: '9.0');
    });
  });
}
