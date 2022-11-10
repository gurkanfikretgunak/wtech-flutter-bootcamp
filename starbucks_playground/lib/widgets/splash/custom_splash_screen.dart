import 'package:flutter/cupertino.dart';

class CustomSplashScreen {
  static Widget customSplashScreen() {
    return Container(
      color: const Color.fromRGBO(77, 179, 124, 8),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              "assets/logo.png",
              height: 130,
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      )),
    );
  }
}
