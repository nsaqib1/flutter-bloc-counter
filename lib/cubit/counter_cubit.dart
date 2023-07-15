import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterInitiate());

  int counter = 0;

  void incrementCounter() {
    counter++;
    emit(CounterValueUpdated(counter: counter));
  }

  void decrementCounter() {
    counter--;
    emit(CounterValueUpdated(counter: counter));
  }
}
