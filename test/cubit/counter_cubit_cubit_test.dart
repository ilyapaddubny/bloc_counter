import 'package:bloc_counter/cubit/counter_cubit_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit.close();
    });

    test(
        'the initial state for the CounterCubit is CounterState(counterValue: 0)',
        () {
      expect(counterCubit.state,
          CounterState(counterValue: 0, wasIncremented: false));
    });

    test('CounterCubit should increment state by 1 when increment is called',
        () {
      counterCubit.increment();
      expect(counterCubit.state,
          CounterState(counterValue: 1, wasIncremented: true));
    });

    test('CounterCubit should decrement state by 1 when decrement is called',
        () {
      counterCubit.increment(); // To make the counterValue = 1
      counterCubit.decrement();
      expect(counterCubit.state,
          CounterState(counterValue: 0, wasIncremented: false));
    });
  });
}
