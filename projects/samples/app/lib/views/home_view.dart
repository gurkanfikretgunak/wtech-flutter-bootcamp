import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool customAppBar = true;
    return Scaffold(
      appBar: customAppBar ? CustomWidgets.getAppBarWidget() : AppBar(),
      bottomNavigationBar: CustomWidgets.getBottomAppBarWidget(),
      extendBody: true,
      floatingActionButton: CustomWidgets.getFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [CustomWidgets.getAppBanner()],
        ),
      ),
    );
  }
}
