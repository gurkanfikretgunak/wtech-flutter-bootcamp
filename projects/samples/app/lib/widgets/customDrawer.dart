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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
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
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "${'@kullanıcıAdı'}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "${'sayı'} Takip edilen",
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "${'sayı'} Takipçi",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ],
              )),
          const Divider(
            color: Colors.white,
          ),
          const ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Profil',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: Text(
              'Konular',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            title: Text(
              'Yer İşaretleri',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.list_alt,
              color: Colors.white,
            ),
            title: Text(
              'Listeler',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.follow_the_signs,
              color: Colors.white,
            ),
            title: Text(
              'Twitter Çevresi',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.person_add,
              color: Colors.white,
            ),
            title: Text(
              'Takipçi İstekleri',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.6,
          ),
        ],
      ),
    );
  }
}
