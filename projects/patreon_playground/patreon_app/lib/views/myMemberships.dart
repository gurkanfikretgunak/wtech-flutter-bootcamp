import 'package:flutter/material.dart';

import '../widgets/customAppBar.dart';
import '../widgets/notFollowingWidget.dart';

class MyMemberships extends StatefulWidget {
  const MyMemberships({super.key});

  @override
  State<MyMemberships> createState() => _MyMembershipsState();
}

class _MyMembershipsState extends State<MyMemberships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "My Memberships",
        w: 90,
        color: Colors.white,
        con: Icons.arrow_back,
        iColor: Colors.grey,
        press: () {
          Navigator.pushNamed(context, "/navigate");
        },
      ),
      //body: const LoadingWidget(),
      body: const NotFollowingWidget(),
      //bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
