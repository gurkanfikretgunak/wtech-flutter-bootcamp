import 'package:flutter/material.dart';

class CustomButtonBar {
  static Widget customButtonBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: customButtonStyle(),
          onPressed: () {},
          child: const Text("Nearby"),
        ),
        ElevatedButton(
            style: customButtonStyle(),
            onPressed: () {},
            child: const Text("Recomended")),
        ElevatedButton(
            style: customButtonStyle(),
            onPressed: () {},
            child: const Text("Popular")),
      ],
    );
  }

  static ButtonStyle customButtonStyle() {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
        textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, color: Colors.white)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side:
                    const BorderSide(color: Color.fromARGB(255, 20, 18, 18)))));
  }
}
