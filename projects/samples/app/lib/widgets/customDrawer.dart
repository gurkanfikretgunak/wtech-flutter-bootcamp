import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  const CircleAvatar(),
                  Expanded(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "İsim",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          " Soyisim",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "TakipSayı",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          " Takip",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          " TakipçiSayı",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          " Takipçi",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          const Divider(
            color: Colors.white,
          ),
          const ListTile(
            leading: Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: Text(
              'Messages',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
