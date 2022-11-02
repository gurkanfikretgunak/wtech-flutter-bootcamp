import 'package:flutter/material.dart';

import '../widgets/custom-widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? customAppBar = true;
    return Scaffold(
        appBar: customAppBar
            ? CustomWidgets.customAppBar()
            // ignore: dead_code
            : AppBar(
                //
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
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomWidgets.customAppBanner(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomWidgets.customCartWidgets(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomWidgets.getBottomAppbarWidget());
  }
}
