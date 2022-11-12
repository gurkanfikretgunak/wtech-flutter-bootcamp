import 'package:flutter/material.dart';
import 'package:starbucks_playground/widgets/home_page/custom_appbar.dart';
import 'package:starbucks_playground/widgets/home_page/custom_body.dart';
import 'package:starbucks_playground/widgets/home_page/custom_navigator_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar.customAppBar(),
      body: CustomBody.customBody(),
      bottomNavigationBar: CustomNavigationBar.customNavigationBar(),
    );
  }
}
