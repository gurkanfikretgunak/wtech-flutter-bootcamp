import 'package:flutter/material.dart';

import 'circle_avatar_with_badge.dart';

class TravelCards extends StatelessWidget {
  const TravelCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 95,
        width: 400,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black38,
              Colors.white24,
              Colors.white,
              Colors.white24,
              Colors.black38
            ],
          ),
          borderRadius: BorderRadius.circular(17),
        ),
      ),
    );
  }
}
