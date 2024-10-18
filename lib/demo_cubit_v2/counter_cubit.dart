import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_cubit.freezed.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState.initial());
  void increment() {
    emit(CounterState.changed(12));
  }

  void reset() {
    emit(CounterState.changed(0));
  }
}
