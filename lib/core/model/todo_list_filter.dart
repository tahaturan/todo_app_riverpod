import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:todo_app_riverpod/core/providers/all_providers.dart';

enum TodoListFilterEnum { all, active, completed }

final todoListFilter = StateProvider(
  (ref) {
    return TodoListFilterEnum.all;
  },
);

final filteredTodoList = Provider<List<TodoModel>>(
  (ref) {
    final filter = ref.watch(todoListFilter);
    final todoList = ref.watch(todoListProvider);

    switch (filter) {
      case TodoListFilterEnum.all:
        return todoList;
      case TodoListFilterEnum.active:
        return todoList.where((element) => !element.iscomplated).toList();
      case TodoListFilterEnum.completed:
        return todoList.where((element) => element.iscomplated).toList();
    }
  },
);
