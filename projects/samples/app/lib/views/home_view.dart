import 'package:app/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Text('WTECH APP'),
        gradient: LinearGradient(colors: [Colors.blue, Colors.purple, Colors.red]),
      ),
      body: Container(),
      bottomNavigationBar: const ChangePages(),
    );
  }
}
