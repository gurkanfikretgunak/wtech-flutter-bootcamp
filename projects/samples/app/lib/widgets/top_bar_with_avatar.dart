import 'package:flutter/material.dart';

import 'circle_avatar_with_badge.dart';

class TopBarWithAvatar extends StatelessWidget {
  const TopBarWithAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // Container Widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Circle Avatars
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    CircleAvatarWithBadge(),
                    Spacer(),
                    Spacer(),
                    Text(
                      "Hoş Geldin, Onur.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ]),
            ),
          ],
        ),
        //Container Style
        height: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.shade50,
              Colors.red.shade300,
              Colors.red.shade500,
              Colors.red.shade700,
              Colors.red.shade900
            ],
          ),
          borderRadius: BorderRadius.circular(25),
          color: Colors.black,
        ),
      ),
    );
  }
}
