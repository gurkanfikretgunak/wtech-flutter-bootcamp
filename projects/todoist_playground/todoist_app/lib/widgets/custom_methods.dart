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

  static void componentSnackbar(context, String textInfo, String labelText) {
    // ignore: unused_element
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(textInfo),
      action: SnackBarAction(
        label: labelText,
        textColor: Colors.white,
        onPressed: () {},
      ),
    );

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
