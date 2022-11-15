import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import 'package:patreon_app/widgets/customBottomAppbar.dart';
import 'package:patreon_app/widgets/notFollowingWidget.dart';

import '../widgets/loadingWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Feed",
        w: 150,
        color: Colors.blue,
        con: Icons.person,
        iColor: Colors.white,
        press: () {},
      ),
      //body: LoadingWidget(),
      body: const NotFollowingWidget(),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
