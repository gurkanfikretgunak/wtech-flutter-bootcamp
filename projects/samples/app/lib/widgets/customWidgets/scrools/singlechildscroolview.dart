import 'package:flutter/material.dart';

class SingleChildScroolViewWidget extends StatelessWidget {
  const SingleChildScroolViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: _SingleChild());
  }
}

class _SingleChild extends StatefulWidget {
  const _SingleChild();

  @override
  State<_SingleChild> createState() => __SingleChildState();
}

class __SingleChildState extends State<_SingleChild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _CreateContainer(myColor: Colors.yellow),
        _CreateContainer(myColor: Colors.blueAccent),
        _CreateContainer(myColor: Colors.green),
        _CreateContainer(myColor: Colors.purple),
      ],
    );
  }
}

class _CreateContainer extends StatelessWidget {
  const _CreateContainer({required this.myColor});
  final Color myColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: myColor,
    );
  }
}
