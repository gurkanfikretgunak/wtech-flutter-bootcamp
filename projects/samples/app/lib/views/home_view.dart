//import 'package:app/widgets/customAppBar.dart';
import 'package:app/widgets/customAppBarWidget.dart';
import 'package:app/widgets/customBottomAppBar.dart';
import 'package:app/widgets/customDrawer.dart';
import 'package:app/widgets/customFloatingActionButton.dart';
import 'package:app/widgets/customListTile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool customAppBar = true;
    return Scaffold(
      appBar: customAppBar ? const CustomAppBar() : AppBar(),
      drawer: const CustomDrawer(),
      extendBody: true,
      body: Column(
        children: const [
          Divider(),
          CustomListTile(),
          CustomListTile(),
        ],
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
