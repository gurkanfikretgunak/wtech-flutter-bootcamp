import 'package:flutter/material.dart';

class DescriptionTextStock extends StatelessWidget {
  const DescriptionTextStock({
    Key? key,
  }) : super(key: key);

  final Color _bitterDandelion = const Color.fromARGB(255, 96, 196, 60);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          StockDescriptionText().text1,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StockDescriptionText().text2),
              Text(
                StockDescriptionText().text3,
                style: TextStyle(color: _bitterDandelion),
              )
            ],
          ),
        )
      ],
    );
  }
}

class StockDescriptionText {
  final String text1 = 'You\'re almost there! You\'ll get free stock when. ';
  final String text2 = 'you join.';
  final String text3 = ' Learn More';
}
