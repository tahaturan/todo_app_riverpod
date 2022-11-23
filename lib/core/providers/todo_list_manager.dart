import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:uuid/uuid.dart';

class TodoListManager extends StateNotifier<List<TodoModel>> {
  TodoListManager([List<TodoModel>? initialTodos]) : super(initialTodos ?? []);

  void addTodo(String description) {
    var addTodo = TodoModel(id: const Uuid().v4(), description: description);

    state = [...state, addTodo];
  }

  void toggle(String id) {
    state = [
      for (var todo in state)
        if (todo.id == id)
          TodoModel(id: todo.id, description: todo.description, iscomplated: !todo.iscomplated)
        else
          todo
    ];
  }

  void edit({required String id, required String newDescription}) {
    state = [
      for (var todo in state)
        if (todo.id == id) TodoModel(id: todo.id, description: newDescription, iscomplated: todo.iscomplated) else todo
    ];
  }

  void remove(TodoModel removedTodo) {
    state = state.where((element) => element.id != removedTodo.id).toList();
  }

  int unCompletedCount() {
    return state.where((element) => !element.iscomplated).length;
  }

  int completedCount() {
    return state.where((element) => element.iscomplated).length;
  }

  List<TodoModel> unComletedTodos() {
    return state.where((element) => !element.iscomplated).toList();
  }

  List<TodoModel> completedTodos() {
    return state.where((element) => element.iscomplated).toList();
  }
}
