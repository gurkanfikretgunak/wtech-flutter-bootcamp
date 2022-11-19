import 'package:flutter/material.dart';

class CustomMethods {
  static void settingModalBottomSheet(context, Widget wid) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.grey[50],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(10),
            topStart: Radius.circular(10),
          ),
        ),
        builder: (context) =>
            Container(height: 630, padding: const EdgeInsetsDirectional.only(bottom: 30, top: 3), child: wid));
  }
}
