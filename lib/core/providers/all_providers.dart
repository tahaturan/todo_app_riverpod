import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:todo_app_riverpod/core/providers/todo_list_manager.dart';
import 'package:uuid/uuid.dart';

final todoListProvider = StateNotifierProvider<TodoListManager, List<TodoModel>>(
  (ref) {
    return TodoListManager([
      TodoModel(id: const Uuid().v4(), description: 'kitap al'),
      TodoModel(id: const Uuid().v4(), description: 'spor git', iscomplated: true),
      TodoModel(id: const Uuid().v4(), description: 'bilgisayar al', iscomplated: true),
    ]);
  },
);
