import 'package:calculator_app/core/core.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

// Holds , perfomrs computations, persists results
class CalculatorCubit extends HydratedCubit<String> {
  CalculatorCubit() : super('0');

  Parser p = Parser();

// returnds persisted results
  @override
  String? fromJson(Map<String, dynamic> json) {
    final expression = json['expression'] as String;
    return expression;
  }

// saves results
  @override
  Map<String, dynamic>? toJson(String state) {
    final expression = {'expression': state};

    return expression;
  }

// receives actions from all keypad keys
  void keyPressed({required String key}) {
    switch (key) {
      case Constants.kResetButton:
        resetData();
        break;
      case Constants.kDeleteButton:
        deleteCharacter();
        break;
      case Constants.kEqualButton:
        result();
        break;
      default:
        handleExpressions(key);
    }
  }

// Deletes the last character in the screen

  void deleteCharacter() {
    final expression = state.substring(0, state.length - 1);

    if (expression.isEmpty) {
      emit('0');
    } else if (state == Constants.kMathError) {
      emit('0');
    } else {
      emit(expression);
    }
  }

// resets the screen
  void resetData() => emit('0');

// handles the calculation results
  void result() {
    try {
      // Perfomrs the mathematical computations
      final exp = p.parse(state.replaceAll('x', '*'));

      final contextModel = ContextModel();
      final results = exp.evaluate(EvaluationType.REAL, contextModel);
      emit(results.toString());
    } catch (e) {
      emit(Constants.kMathError);
    }
  }

// removes 0 in the expression
// emits pressed numbers  to the screen
  void handleExpressions(String key) {
    if (key == '.') {
      emit(state + key);
    } else {
      final newState = state + key;

      emit(newState.startsWith('0') ? newState.substring(1) : newState);
    }
  }
}
