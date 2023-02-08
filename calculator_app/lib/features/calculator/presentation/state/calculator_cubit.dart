import 'package:calculator_app/core/core.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class CalculatorCubit extends HydratedCubit<String> {
  CalculatorCubit() : super('0');

  @override
  String? fromJson(Map<String, dynamic> json) {
    final expression = json['expression'] as String;
    return expression;
  }

  @override
  Map<String, dynamic>? toJson(String state) {
    final expression = {'expression': state};

    return expression;
  }

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
