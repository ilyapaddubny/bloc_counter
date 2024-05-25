part of 'counter_cubit_cubit.dart';

// ignore: must_be_immutable
class CounterState extends Equatable {
  int counterValue;
  bool wasIncremented;

  CounterState({required this.counterValue, required this.wasIncremented});

  @override
  List<Object?> get props => [counterValue, wasIncremented];
}
