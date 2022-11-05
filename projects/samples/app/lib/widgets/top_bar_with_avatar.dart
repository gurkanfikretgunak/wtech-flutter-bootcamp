import 'package:flutter/material.dart';

import 'circle_avatar_with_badge.dart';

class TopBarWithAvatar extends StatelessWidget {
  const TopBarWithAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
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
                      "Yolculuk nereye Pelin?",
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
        height: 100,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.red.shade50, Colors.red.shade900],
          ),
          borderRadius: BorderRadius.circular(25),
          color: Colors.black,
        ),
      ),
    );
  }
}
