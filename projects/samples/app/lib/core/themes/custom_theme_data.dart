import 'package:flutter/material.dart';

class custom_theme_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://getbakkal.com/wp-content/uploads/2021/11/SocialShare.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
    );
  }
}
