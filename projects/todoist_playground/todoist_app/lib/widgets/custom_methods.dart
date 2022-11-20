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
}
