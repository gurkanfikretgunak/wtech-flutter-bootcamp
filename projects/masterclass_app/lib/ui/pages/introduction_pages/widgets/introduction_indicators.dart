import 'package:flutter/material.dart';
import 'package:masterclass_app/ui/pages/introduction_pages/viewmodel/introduction_viewmodel.dart';
import 'package:provider/provider.dart';

class IntroductionIndicators extends StatelessWidget {
  final int listLenght;
  const IntroductionIndicators({Key? key, required this.listLenght})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = context.watch<IntroductionPageVM>().currentIndex;

    Widget buildcircle(int index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == index ? Colors.white : Colors.grey,
            ),
          ),
        );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(listLenght, buildcircle),
    );
  }
}
