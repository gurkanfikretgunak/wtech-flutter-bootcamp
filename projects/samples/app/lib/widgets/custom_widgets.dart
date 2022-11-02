import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget customBottomNavBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.explore,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.red,
              ))
        ],
      ),
    );
  }

  static AppBar customAppBar() {
    return AppBar(
      title: const Text(
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
    );
  }

  static Widget customDrawer() {
    return Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(children: [
                  Text(
                    "Order Status",
                    style: TextStyle(color: Colors.red),
                  ),
                  Icon(
                    Icons.delivery_dining,
                    color: Colors.red,
                  )
                ]),
              ),
              TextButton(
                onPressed: () {},
                child: Row(children: [
                  Text(
                    "Order History",
                    style: TextStyle(color: Colors.red),
                  ),
                  Icon(
                    Icons.history_rounded,
                    color: Colors.red,
                  )
                ]),
              ),
              TextButton(
                onPressed: () {},
                child: Row(children: [
                  Text(
                    "Help & Support",
                    style: TextStyle(color: Colors.red),
                  ),
                  Icon(
                    Icons.support_agent,
                    color: Colors.red,
                  )
                ]),
              ),
              TextButton(
                onPressed: () {},
                child: Row(children: [
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.red),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.red,
                  )
                ]),
              ),
            ],
          ),
        ));
  }

  static Widget getFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.shopping_cart_rounded,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }

  static Widget customContainer() {
    return Container(
      color: Colors.red,
      child: CustomWidgets.customAppBanner(),
    );
  }

  static Widget customAppBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: MaterialBanner(
              content: const Text(
                'Would you like to order ?',
              ),
              leading: const CircleAvatar(
                child: Icon(Icons.shopping_cart_checkout),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              backgroundColor: Colors.white,
              actions: [
                TextButton(
                  child: const Text(
                    'YES',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text(
                    'NO',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
