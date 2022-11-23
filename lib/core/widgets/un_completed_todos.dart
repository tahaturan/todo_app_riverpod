import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:todo_app_riverpod/core/providers/all_providers.dart';
import 'package:todo_app_riverpod/product/widgets/todo_checkbox_listtile.dart';

class UnCompletedTodos extends ConsumerWidget {
  const UnCompletedTodos({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TodoModel> allTodos = ref.watch(todoListProvider.notifier).unComletedTodos();

    return ListView.builder(
      itemCount: allTodos.length,
      itemBuilder: (BuildContext context, int index) {
        return TodoCheckBoxListtile(todo: allTodos[index]);
      },
    );
  }
}
