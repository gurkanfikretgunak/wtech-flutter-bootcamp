import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(),
      body: const Center(
        child: Text(
          'BAKKALA HOŞGELDİNİZ',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      bottomNavigationBar: CustomWidgets.customBottomNavBar(),
    );
  }
}
