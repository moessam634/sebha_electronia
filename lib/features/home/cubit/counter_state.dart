
sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class CounterUpdate extends CounterState {}
final class ImageUpdate extends CounterState {}
final class TextUpdate extends CounterState {}
