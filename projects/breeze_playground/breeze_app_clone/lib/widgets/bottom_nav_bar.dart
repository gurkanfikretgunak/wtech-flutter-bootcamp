import 'package:breeze_app_clone/views/home_screen_view.dart';
import 'package:breeze_app_clone/views/login_screen_view.dart';
import 'package:breeze_app_clone/views/settings_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onboarding/onboarding.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    HomeView(),
    LoginScreen(),
    Text("Stats Page"),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
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
    );
  }

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //_widgetOptions.elementAt(_selectedIndex);
    });
  }
}


/*

*/
