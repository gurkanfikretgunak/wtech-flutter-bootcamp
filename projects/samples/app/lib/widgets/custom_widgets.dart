import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  // TODO: customAppBar function will be updated
  static PreferredSize customAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(Icons.location_on_sharp),
                          const Text('Location')
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  static customBottomNavBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) => _onItemTapped(value),
        items: const [
          BottomNavigationBarItem(
            label: 'ANA SAYFA',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'SOHBETLER',
            icon: Icon(
              Icons.message,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'SAT',
          ),
          BottomNavigationBarItem(
            label: 'İLANLARIM',
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            label: 'HESAP',
            icon: Icon(
              Icons.person,
            ),
          ),
        ]);
  }

  static customFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.camera_alt_sharp),
    );
  }

  static void _onItemTapped(int index) {
    if (index != 2) {
      if (kDebugMode) {
        debugPrint('Button index: $index');
      }
    } else {
      //TODO: Same reaction with floating action button which has camera icon on center
    }
  }
}
