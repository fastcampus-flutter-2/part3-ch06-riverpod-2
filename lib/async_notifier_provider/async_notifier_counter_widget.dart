import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_async_notifier_provider.dart';

class AsyncNotifierCounterWidget extends ConsumerWidget {
  const AsyncNotifierCounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref.watch(asyncCounterNotifierProvider);
    return switch (number) {
      AsyncData(:final value) => Text(
          value.toString(),
          style: TextStyle(fontSize: 32),
        ),
      AsyncError(:final error) => Text(
          error.toString(),
          style: TextStyle(fontSize: 32),
        ),
      _ => CircularProgressIndicator.adaptive(),
    };
  }
}

// Consumer(
//   builder: (BuildContext context, WidgetRef ref, Widget? child) {
//     final count = ref.watch(asyncCounterNotifierProvider);
//     return count.when(
//         data: (data) {
//           return Center(
//             child: Text(
//               "${data}",
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//           );
//         },
//         error: (e, t) => Text("$e"),
//         loading: () {
//           return CircularProgressIndicator.adaptive();
//         });
//     // return Center(
//     //   child: Text(
//     //     "${count}",
//     //     style: TextStyle(
//     //       fontSize: 20,
//     //     ),
//     //   ),
//     // );
//   },
// )