import 'package:bloc_test/bloc_test.dart';
import 'package:calculator_app/core/data/constants.dart';
import 'package:calculator_app/features/calculator/calculator.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/mocks.dart';

void main() {
  late Storage storage;

  setUp(() {
    storage = MockStorage();
    when(
      () => storage.write(any(), any<dynamic>()),
    ).thenAnswer((_) async {});
    HydratedBloc.storage = storage;
  });
  group('CalculatorCubit', () {
    test('initial state is 0', () {
      expect(CalculatorCubit().state, equals('0'));
    });

    group('keyPressed', () {
      blocTest<CalculatorCubit, String>(
        'emits "0" when keyPressed is called '
        'with $Constants.kResetButton',
        build: CalculatorCubit.new,
        act: (cubit) => cubit.keyPressed(key: Constants.kResetButton),
        expect: () => [equals('0')],
      );
      blocTest<CalculatorCubit, String>(
        'emits "0" when keyPressed is called '
        'with $Constants.kDeleteButton and state is empty',
        build: CalculatorCubit.new,
        act: (cubit) => cubit.keyPressed(key: Constants.kResetButton),
        expect: () => [equals('0')],
      );
      blocTest<CalculatorCubit, String>(
        'emits ["key,$Constants.kMathError,"0"] when keyPressed is called '
        'with with $Constants.kDeleteButton and state is an invalid expression',
        build: CalculatorCubit.new,
        act: (cubit) => cubit
          ..keyPressed(key: 'key')
          ..result()
          ..keyPressed(key: Constants.kDeleteButton),
        expect: () =>
            [equals('key'), equals(Constants.kMathError), equals('0')],
      );

      blocTest<CalculatorCubit, String>(
        'emits [123][12] when keyPressed is called '
        'with $Constants.kDeleteButton and state is a valid expression',
        build: CalculatorCubit.new,
        act: (cubit) => cubit
          ..keyPressed(key: '123')
          ..keyPressed(key: Constants.kDeleteButton),
        expect: () => [equals('123'), equals('12')],
      );

      blocTest<CalculatorCubit, String>(
        'emits [0.][.123] when keyPressed is called '
        'with default handleExpressions and state is a valid expression',
        build: CalculatorCubit.new,
        act: (cubit) => cubit
          ..keyPressed(key: '.')
          ..keyPressed(key: '123'),
        expect: () => [equals('0.'), equals('.123')],
      );

      blocTest<CalculatorCubit, String>(
        'emits [123+123][246.0] when keyPressed is called '
        'with default $Constants.kEqualButton and state is a valid expression',
        build: CalculatorCubit.new,
        act: (cubit) => cubit
          ..keyPressed(key: '123+123')
          ..keyPressed(key: Constants.kEqualButton),
        expect: () => [equals('123+123'), equals('246.0')],
      );
    });
  });
}
