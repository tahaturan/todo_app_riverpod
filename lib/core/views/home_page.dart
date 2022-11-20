import 'package:flutter/material.dart';

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
      body: SafeArea(
          child: TabBarView(
        controller: _tabController,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.cyan),
          Container(color: Colors.black),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: MyBottomAppbar(tabController: _tabController),
    );
  }
}
