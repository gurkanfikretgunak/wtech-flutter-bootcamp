import 'package:app/widgets/custom_appbar.dart';
import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final bool isCustomAppBar;
  final bool isNotched;
  const HomeView({super.key, required this.isCustomAppBar, this.isNotched = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      // floatingActionButton: CustomWidgets.getFloatingActionButtonWidget(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: isNotched ? CustomWidgets.getBottomAppBarWidget() : CustomWidgets.getBottomNavigationBar(),
      appBar: const CustomAppBar(appBarHeight: 199),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidgets.getMaterialBanner(),
          ],
        ),
      ),
    );
  }
}
