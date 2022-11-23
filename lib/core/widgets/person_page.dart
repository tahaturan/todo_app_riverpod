import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/core/providers/all_providers.dart';

class PersonPage extends ConsumerWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tamamlanmamis Gorev: ${ref.watch(todoListProvider.notifier).unCompletedCount()}',
              style: Theme.of(context).textTheme.headline5),
          Text('Tamamlanmis Gorev: ${ref.watch(todoListProvider.notifier).completedCount()}',
              style: Theme.of(context).textTheme.headline5),
          Text('Toplam Gorev: ${ref.watch(todoListProvider).length}', style: Theme.of(context).textTheme.headline5),
        ],
      ),
    );
  }
}
