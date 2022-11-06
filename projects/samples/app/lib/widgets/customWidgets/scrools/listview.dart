import 'package:app/widgets/card.dart';
import 'package:app/widgets/customWidgets/chips.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CardWidget(),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [ChipWidget()],
          ),
        ),
        Container(
          height: 600,
          color: Colors.brown.shade300,
        )
      ],
    );
  }
}
