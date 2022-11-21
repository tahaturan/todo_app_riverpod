import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/core/model/todo_model.dart';
import 'package:todo_app_riverpod/core/widgets/all_todos.dart';
import 'package:todo_app_riverpod/product/constants/borderradius/projocet_border_radius.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';
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
  List<TodoModel> allTodos = TodoModel.dummyTodo();

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
          AllTodos(),
          Container(color: Colors.green),
          Container(color: Colors.cyan),
          Container(color: Colors.black),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _modalBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: MyBottomAppbar(tabController: _tabController),
      extendBody: true,
    );
  }

  Future<dynamic> _modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
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
  }
}
