import 'package:flutter/material.dart';

class CircleAvatarWithBadge extends StatelessWidget {
  const CircleAvatarWithBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  "https://avatars.githubusercontent.com/u/57417618?v=4"),
            ),
          ),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.red.shade900,
              Colors.red.shade300,
              Colors.red.shade100
            ]),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        if (true)
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
      ],
    );
  }
}
