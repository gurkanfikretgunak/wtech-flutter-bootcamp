import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
              "https://handpan-temple.fr/images/bf5d6641d59b465ae5c69e9398f8f767.png"),
        ),
        const CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
              "https://media-exp1.licdn.com/dms/image/C4E03AQH8GO65xmNo5Q/profile-displayphoto-shrink_200_200/0/1590353439991?e=1674086400&v=beta&t=U2hZhypIBVdbX9QpPWiQrw3NHjvu7_b0uUiSHp6OyK4"),
        ),
      ],
    );
  }
}
