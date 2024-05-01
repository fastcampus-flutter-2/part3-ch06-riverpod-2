import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'future_gen_provider.g.dart';

final prevCounterFutureProvider = FutureProvider((ref) {
  return 10;
});

@riverpod
Future<int> newCounter(NewCounterRef ref, int a, int b, int c) async {
  return 10;
}

@riverpod
class NewClassCounter extends _$NewClassCounter {
  @override
  int build(int a, int b, int c, int d) {

    return 10 + (a + b + c+ d);
  }
}
