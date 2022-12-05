import 'package:breeze_app_clone/views/guided_tour/step_screen.dart';
import 'package:breeze_app_clone/views/home_screen_view.dart';
import 'package:breeze_app_clone/views/login_screen_view.dart';
import 'package:breeze_app_clone/views/register_screen.dart';
import 'package:breeze_app_clone/views/settings_screen_view.dart';
import 'package:breeze_app_clone/views/tests_screen_view.dart';
import 'package:breeze_app_clone/widgets/bottom_nav_bar.dart';
import 'package:breeze_app_clone/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({Key? key}) : super(key: key);


  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  static int _selectedIndex = 0;
  bool customAppBar = true;

  static const List<Widget> _widgetOptions = [
    HomeView(),
    TestsScreen(),
    Text("Stats Page"),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    //bool customAppBar = false;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: false,
        backgroundColor: Colors.white,
        //appBar: CustomAppBar(),
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Container(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color.fromARGB(255, 159, 168, 239),
              unselectedItemColor: Color.fromARGB(255, 224, 227, 235),
              selectedFontSize: 15,
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedFontSize: 15,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.cloud),
                  //icon: IconButton(icon: Icon(Icons.cloud), onPressed: () {},),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.comment),
                  label: "Tests",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.query_stats),
                  label: "Stats",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        //extendBody: true,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //_widgetOptions.elementAt(_selectedIndex);
    });
  }
}
