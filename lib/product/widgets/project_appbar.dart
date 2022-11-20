import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/core/model/user_model.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';
import 'package:todo_app_riverpod/product/utility/image_utility.dart';
import 'package:todo_app_riverpod/product/widgets/circular_image_avatar.dart';

class AppBarScreen extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarScreen({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi ${User.dummuyUser().name}'),
          Text("${DateTime.now().day}/${DateTime.now().month}",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: ProjectColor.blueDam.color())),
        ],
      ),
      actions: [CircleImageAvatar(imagePath: ImageUtility.profile.name)],
      leading: const Icon(Icons.person),
    );
  }
}
