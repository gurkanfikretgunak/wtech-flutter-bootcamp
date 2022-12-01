import 'package:flutter/material.dart';

class NavigationBarStyle extends StatelessWidget {
  const NavigationBarStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.6),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_rounded,
                            color: Colors.grey,
                          ))),
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code_scanner,
                            color: Colors.grey,
                          ))),
                ),
                Text(
                  "Scan/Pay",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.card_giftcard,
                            color: Colors.grey,
                          ))),
                ),
                Text(
                  "Offers",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.local_drink,
                            color: Colors.grey,
                          ))),
                ),
                Text(
                  "Order",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
