import 'package:calculator_app/app/app.dart';
import 'package:calculator_app/app/bootstrap.dart';
import 'package:flutter/widgets.dart';

// App entry point for staging environment
void main() {
  bootstrap(
    () => const App(
      key: Key('app'),
    ),
  );
}
