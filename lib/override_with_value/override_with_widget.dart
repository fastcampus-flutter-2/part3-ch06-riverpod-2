import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'override_counter.dart';

class OverrideWithWidget extends StatelessWidget {
  const OverrideWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final counter = ref.watch(counterOverrideStateProvider);
        return Center(
          child: Text(
            "${counter}",
            style: TextStyle(fontSize: 40),
          ),
        );
      },
    );
  }
}
