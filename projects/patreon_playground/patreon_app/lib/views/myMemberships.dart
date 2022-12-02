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
        widget: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/navigate");
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              )),
        ),
      ),
      body: const NotFollowingWidget(),
    );
  }
}
