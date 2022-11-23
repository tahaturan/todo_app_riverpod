import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/core/providers/all_providers.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';
import 'package:todo_app_riverpod/product/constants/padding/project_padding.dart';

class MyBottomAppbar extends ConsumerWidget {
  const MyBottomAppbar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        tabs: [
          Tooltip(
              message: 'Toplam ${ref.watch(todoListProvider).length} gorev var',
              child: const Icon(Icons.checklist_outlined)),
          Tooltip(
              message: '${ref.watch(todoListProvider.notifier).unCompletedCount()} Adet Tamamlanmamis',
              child: const Icon(Icons.check_box_outline_blank_outlined)),
          Tooltip(
              message: '${ref.watch(todoListProvider.notifier).completedCount()} Adet Tamamlanmamis',
              child: const Icon(Icons.done_all_outlined)),
          const Tooltip(message: "Genel Bilgiler", child: Icon(Icons.person)),
        ],
      ),
    );
  }
}
