import 'package:app/widgets/model/listtile_model.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.model,
  });
  final ListtileModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FirstCharacterofName(name: model.name),
      title: Text(model.name),
      subtitle: Text(model.telephoneNo),
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
