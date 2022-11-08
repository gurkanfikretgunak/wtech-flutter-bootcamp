import 'package:app/core/themes/custom_theme_data.dart';
import 'package:app/widgets/custom_app_banner.dart';
import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/custom_bottom_nav_bar.dart';
import 'package:app/widgets/custom_drawer.dart';
import 'package:app/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bakkal',
          style: TextStyle(color: Colors.white, fontSize: 24),
          textAlign: TextAlign.end,
        ),
        backgroundColor: Colors.red,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: CustomAppBanner(),
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
