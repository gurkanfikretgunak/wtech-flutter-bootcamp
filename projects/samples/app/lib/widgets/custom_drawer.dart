import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
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
}
