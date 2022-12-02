import 'package:flutter/material.dart';

class CustomSearchListTile extends StatelessWidget {
  const CustomSearchListTile(
      {super.key,
      required this.image,
      required this.userName,
      required this.userInfo,
      this.onTap});
  final String? image;
  final String? userName;
  final String? userInfo;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(image ?? ""),
      ),
      title: Text(userName ?? ""),
      subtitle: Text(userInfo ?? ""),
    );
  }
}
