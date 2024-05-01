import 'package:ch08_fastcampus_riverpod_2/async_notifier_provider/my_async_notifier_provider.dart';
import 'package:ch08_fastcampus_riverpod_2/override_with_value/override_counter.dart';
import 'package:ch08_fastcampus_riverpod_2/riverpod_gen/future_gen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(pref),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer(
                builder: (context, ref, child) {
                  final counter = ref.watch(
                    newClassCounterProvider(1, 2, 3, 4),
                  );
                  return Text("${counter}");
                  // return counter.when(
                  //     data: (data) => Center(child: Text("$data")),
                  //     error: (error, trace) {
                  //       return Text("$error");
                  //     },
                  //     loading: () => CircularProgressIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
