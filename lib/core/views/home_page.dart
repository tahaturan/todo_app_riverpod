import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/product/constants/borderradius/projocet_border_radius.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';
import 'package:todo_app_riverpod/product/constants/padding/project_padding.dart';
import 'package:todo_app_riverpod/product/widgets/custom_bottom_sheet.dart';

import 'package:todo_app_riverpod/product/widgets/my_bottom_appbar.dart';
import 'package:todo_app_riverpod/product/widgets/project_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarScreen(),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(color: Colors.amber),
          Container(color: Colors.green),
          Container(color: Colors.cyan),
          Container(color: Colors.black),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const CustomBottomSheet();
            },
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.6),
            backgroundColor: ProjectColor.sumptuousPurble.color(),
            isScrollControlled: true,
            shape: const OutlineInputBorder(
                borderRadius: ProjectBorderRadius.bottomSheetBorderRadius, borderSide: BorderSide.none),
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: MyBottomAppbar(tabController: _tabController),
      extendBody: true,
    );
  }
}
