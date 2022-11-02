import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MovieCategory.horror.chip(),
        MovieCategory.fantastic.chip(),
        MovieCategory.drama.chip(),
        MovieCategory.mystery.chip(),
        MovieCategory.comedy.chip(),
        MovieCategory.romantic.chip(),
        MovieCategory.action.chip(),
      ],
    );
  }
}

enum MovieCategory { horror, fantastic, drama, mystery, comedy, romantic,action }

extension MovieCategoryExtension on MovieCategory {
  Chip _chip() {
    return Chip(label: Text(name.toUpperCase()));
  }

  chip() {
    return Padding(
      padding: EdgeInsets.only(right: _ChipPadding().right),
      child: _chip(),
    );
  }
}

class _ChipPadding {
  final double right = 5;
}
