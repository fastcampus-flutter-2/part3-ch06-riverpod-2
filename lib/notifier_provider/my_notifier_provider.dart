import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterNotifierProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

final counterSimpleProvider = StateProvider<int>((ref) => 0);

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }
}

final counterStateNotifier = StateNotifierProvider<CounterStateNotifier, int>(
    (ref) => CounterStateNotifier());

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  increment() {
    state++;
  }
}
