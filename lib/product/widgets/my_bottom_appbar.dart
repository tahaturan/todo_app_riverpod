import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';
import 'package:todo_app_riverpod/product/constants/padding/project_padding.dart';

class MyBottomAppbar extends StatelessWidget {
  const MyBottomAppbar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 7,
      shape: const CircularNotchedRectangle(),
      color: ProjectColor.karmaChameleon.color(),
      child: TabBar(
        controller: _tabController,
        padding: ProjectPadding.paddingAll,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: ProjectColor.sumptuousPurble.color(),
        unselectedLabelColor: ProjectColor.sumptuousPurble.color(),
        tabs: const [
          Icon(Icons.checklist_outlined),
          Icon(Icons.check_box_outline_blank_outlined),
          Icon(Icons.done_all_outlined),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
