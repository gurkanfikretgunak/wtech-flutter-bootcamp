import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});
  final String path = 'https://upload.wikimedia.org/wikipedia/tr/3/3f/150px-Liverpool_FC_logo.png';
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        child: Image.network(path),
      ),
    );
  }
}
