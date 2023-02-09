import 'package:calculator_app/app/app.dart';
import 'package:calculator_app/features/calculator/calculator.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CalculatorView), findsOneWidget);
    });
  });
}
