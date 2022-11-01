import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? customAppBar = true;
    return Scaffold(
        appBar: customAppBar
            ? CustomWidgets.customAppBar()
            : AppBar(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                leading: const Icon(Icons.menu),
                title: const Text('Page title'),
                actions: const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.search),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        floatingActionButton: CustomWidgets.getFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomWidgets.customAppBanner(),
            ],
          ),
        ),
        bottomNavigationBar: CustomWidgets.getBottomAppbarWidget());
  }
}
