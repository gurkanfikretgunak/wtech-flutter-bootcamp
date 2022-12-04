import 'package:flutter/material.dart';

import '../core/data/constants/padding_constants.dart';

class CustomIconButtonWithLabelWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  const CustomIconButtonWithLabelWidget({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black12,
            child: IconButton(
              color: Colors.black,
              icon: Icon(icon),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: PaddingConstants.mediumVerticalPadding,
            child: Text(
              label,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          )
        ],
      ),
    );
  }
}
