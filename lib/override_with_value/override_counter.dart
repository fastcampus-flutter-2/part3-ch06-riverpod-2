import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final counterOverrideStateProvider = StateProvider((ref) => 0);

final sharedPreferencesProvider = Provider<SharedPreferences>(
      (ref) => throw UnimplementedError(),
);

final themeProvider = StateProvider<bool>((ref) {
  final theme = ref.read(sharedPreferencesProvider).getBool("kTheme");
  return theme ?? false;
});