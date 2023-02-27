import 'package:calculator_app/app/app.dart';
import 'package:calculator_app/app/bootstrap.dart';
import 'package:flutter/material.dart';

// App entry point for development environment
void main() {
  bootstrap(
    () => const App(
      key: Key('app'),
    ),
  );
}
