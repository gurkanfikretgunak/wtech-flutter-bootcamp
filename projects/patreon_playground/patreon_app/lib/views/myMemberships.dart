import 'package:flutter/material.dart';
import '../core/themes/custom_theme.dart';
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
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My Memberships",
          style: CustomTheme.customThemeData().textTheme.labelMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/navigate");
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: const NotFollowingWidget(),
    );
  }
}
