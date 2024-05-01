import 'package:ch08_fastcampus_riverpod_2/async_notifier_provider/my_async_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyInvalidateWidget extends StatelessWidget {
  const MyInvalidateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return TextButton(
          onPressed: () {
            ref.invalidate(asyncCounterNotifierProvider);
          },
          child: Text("ref.invalidate"),
        );
      },
    );
  }
}
