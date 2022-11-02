import 'package:app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    required this.appBarTitleText,
    this.appBarActions,
  });

  final Widget body;
  final String appBarTitleText;
  final List<Widget>? appBarActions;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: _buildAppBar(),
        extendBody: false,
        extendBodyBehindAppBar: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: body,
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(appBarTitleText),
      actions: appBarActions ??
          const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.notification_important_outlined),
            ),
          ],
    );
  }
}
