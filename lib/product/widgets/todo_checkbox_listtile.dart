import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';

class TodoCheckBoxListtile extends StatelessWidget {
  const TodoCheckBoxListtile({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final TodoModel todo;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(todo.id),
      child: CheckboxListTile(
        value: todo.iscomplated,
        onChanged: (value) {},
        title: Text(todo.description),
        activeColor: ProjectColor.blueDam.color(),
        checkColor: ProjectColor.scaffoldBackgroundColor.color(),
        side: BorderSide(color: ProjectColor.blueDam.color()),
      ),
    );
  }
}
