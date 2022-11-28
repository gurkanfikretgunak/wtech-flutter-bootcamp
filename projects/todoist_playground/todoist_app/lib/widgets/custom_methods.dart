import 'package:flutter/material.dart';

class CustomMethods {
  static void settingModalBottomSheet(context, Widget wid) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.grey[100],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(10),
            topStart: Radius.circular(10),
          ),
        ),
        builder: (context) => SizedBox(height: 600, child: wid));
  }

  static EdgeInsetsDirectional sheetBottomValue() {
    return const EdgeInsetsDirectional.only(
      start: 20,
      end: 20,
      bottom: 30,
      top: 8,
    );
  }

  static void alertDialogComponent(context) {
    // ignore: unused_element
    showAlertDialog(BuildContext context) {
      // set up the button
      Widget okButton = TextButton(
        child: const Text("OK"),
        onPressed: () {},
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: const Text("My title"),
        content: const Text("This is my message."),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }
}
