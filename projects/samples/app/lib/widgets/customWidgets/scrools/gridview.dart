import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: const [
        _CreateContainer(myColor: Colors.deepPurple),
        _CreateContainer(myColor: Colors.yellow),
        _CreateContainer(myColor: Colors.pink),
        _CreateContainer(myColor: Colors.green),
        _CreateContainer(myColor: Colors.grey),
        _CreateContainer(myColor: Colors.blue),
        _CreateContainer(myColor: Colors.teal),
        _CreateContainer(myColor: Colors.orange),
        _CreateContainer(myColor: Colors.deepPurple),
        _CreateContainer(myColor: Colors.yellow),
        _CreateContainer(myColor: Colors.pink),
        _CreateContainer(myColor: Colors.green),
        _CreateContainer(myColor: Colors.grey),
        _CreateContainer(myColor: Colors.blue),
        _CreateContainer(myColor: Colors.teal),
        _CreateContainer(myColor: Colors.orange),
      ],
    );
  }
}

class _CreateContainer extends StatelessWidget {
  const _CreateContainer({super.key, required this.myColor});
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
    );
  }
}
