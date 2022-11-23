import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:todo_app_riverpod/core/providers/all_providers.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';

class TodoCheckBoxListtile extends ConsumerStatefulWidget {
  const TodoCheckBoxListtile({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final TodoModel todo;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoCheckBoxListtileState();
}

class _TodoCheckBoxListtileState extends ConsumerState<TodoCheckBoxListtile> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(widget.todo.id),
      onDismissed: (direction) {
        ref.read(todoListProvider.notifier).remove(widget.todo);
      },
      child: CheckboxListTile(
        value: widget.todo.iscomplated,
        onChanged: (value) {
          ref.read(todoListProvider.notifier).toggle(widget.todo.id);
        },
        title: Text(widget.todo.description),
        activeColor: ProjectColor.blueDam.color(),
        checkColor: ProjectColor.scaffoldBackgroundColor.color(),
        side: BorderSide(color: ProjectColor.blueDam.color()),
      ),
    );
  }
}
