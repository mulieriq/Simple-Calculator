import 'package:calculator_app/app/app.dart';
import 'package:calculator_app/app/bootstrap.dart';

// App entry point for production environment
void main() {
  bootstrap(() => const App());
}
