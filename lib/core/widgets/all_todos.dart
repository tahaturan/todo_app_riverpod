import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:todo_app_riverpod/product/widgets/todo_checkbox_listtile.dart';

class AllTodos extends StatelessWidget {
  AllTodos({super.key});
  List<TodoModel> allTodos = TodoModel.dummyTodo();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allTodos.length,
      itemBuilder: (BuildContext context, int index) {
        return TodoCheckBoxListtile(todo: allTodos[index]);
      },
    );
  }
}
