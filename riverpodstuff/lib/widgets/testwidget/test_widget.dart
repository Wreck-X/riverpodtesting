import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodstuff/providers/test_data_provider.dart';

class TestWidget extends ConsumerWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updates = ref.watch(listNotifierProvider);

    return updates.when(
      data: (data) => Expanded(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Text(data[index].name);
          },
        ),
      ),
      error: (e, _) => Text(
        e.toString(),
        style: const TextStyle(color: Colors.black),
      ),
      loading: () => const Text("Loading"),
    );
  }
}
