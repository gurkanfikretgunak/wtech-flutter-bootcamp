import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {super.key, required this.name, required this.telephoneNo});
  final String name;
  final String telephoneNo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FirstCharacterofName(name: name),
      title: Text(name),
      subtitle: Text(telephoneNo),
    );
  }
}

class FirstCharacterofName extends StatelessWidget {
  const FirstCharacterofName({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text(name[0]),
    );
  }
}
