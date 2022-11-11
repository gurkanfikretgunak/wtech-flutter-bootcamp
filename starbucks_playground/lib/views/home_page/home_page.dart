import 'package:flutter/material.dart';
import 'package:starbucks_playground/widgets/home_page/custom_appbar.dart';
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
      appBar: CustomAppbar.customAppBar(),
      body: Column(
        children: [
          CustomAppbarTwo(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar.customNavigationBar(),
      
    );
  }

// Sign  INbox  person iconlarının bulundugu container
  Row CustomAppbarTwo() {
    return Row(children: [
      IconButton(
        icon: const Icon(
          Icons.login,
          size: 32,
        ),
        color: Colors.black,
        onPressed: () {},
      ),
      const Text(
        "Sign In",
        style: TextStyle(color: Colors.black),
      ),
      IconButton(
        icon: const Icon(
          Icons.mail,
          size: 32,
        ),
        color: Colors.black,
        onPressed: () {},
      ),
      const Text(
        "InBox",
        style: TextStyle(color: Colors.black),
      ),
      const Spacer(),
      IconButton(
        icon: const Icon(
          Icons.account_circle_outlined,
          size: 36,
        ),
        onPressed: () {},
        color: Colors.black,
      ),
    ]);
  }
}
