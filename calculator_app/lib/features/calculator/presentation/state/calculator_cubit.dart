import 'package:bloc/bloc.dart';

class CalculatorCubit extends Cubit<int> {
  CalculatorCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
