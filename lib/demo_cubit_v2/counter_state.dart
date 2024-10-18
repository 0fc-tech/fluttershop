part of 'counter_cubit.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState.initial() = _Initial;
  const factory CounterState.changed(int counter) = _Changed;
  const factory CounterState.preview(int counter1, int counter2) = _Preview;
}
