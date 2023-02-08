import 'package:bloc/bloc.dart';

import 'package:calculator_app/core/core.dart';

class CalculatorCubit extends Cubit<String> {
  CalculatorCubit() : super('0');

  void keyPressed({required String key}) {
    switch (key) {
      case Constants.kResetButton:
        resetData();
        break;
      case Constants.kDeleteButton:
        deleteCharacter();
        break;
      case Constants.kEqualButton:
        break;
      default:
        handleExpressions(key);
    }
  }

  void deleteCharacter() {
    final expression = state.substring(0, state.length - 1);

    if (expression.isEmpty) {
      emit('0');
    } else {
      emit(expression);
    }
  }

  void resetData() => emit('0');

  void result() {}

  void handleExpressions(String key) {
    emit(state + key);
  }
}
