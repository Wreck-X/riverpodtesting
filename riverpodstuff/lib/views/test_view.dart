import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodstuff/providers/test_data_provider.dart';
import 'package:riverpodstuff/widgets/testwidget/test_widget.dart';

class TestView extends ConsumerWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [TestWidget()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(listNotifierProvider.notifier).updateName();
        },
      ),
    );
  }
}
