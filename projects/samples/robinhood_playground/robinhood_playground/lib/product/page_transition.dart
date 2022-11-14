import 'package:flutter/material.dart';

class PageTransition extends StatefulWidget {
  const PageTransition({super.key});

  @override
  State<PageTransition> createState() => _PageTransitionState();
}

class _PageTransitionState extends State<PageTransition> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return _FillContainer(color: PageTranitionColor.grey.getColor());
      },
    );
  }
}

class _FillContainer extends StatelessWidget {
  const _FillContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        //height: 10,
        width: 8,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

enum PageTranitionColor { black, grey }

extension PageTranitionColorExtension on PageTranitionColor {
  Color getColor() {
    switch (this) {
      case PageTranitionColor.black:
        return Colors.black;

      case PageTranitionColor.grey:
        return Colors.grey;
    }
  }
}
