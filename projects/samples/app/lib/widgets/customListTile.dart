import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          title: Text(
            "Kullanıcı Adı",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Text(
            "İçerik ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.white,
        )
      ],
    );
  }
}
