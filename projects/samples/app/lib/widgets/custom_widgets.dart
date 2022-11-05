import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CustomWidgets {
  static PreferredSize customAppBar() {
    return PreferredSize(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amberAccent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Padding(padding: EdgeInsets.all(23))],
            )
          ],
        ),
      ),
    );
  }
}
