import 'package:flutter/material.dart';

enum ScreenState { desktop, tablet, mobile }

enum ScreenStateWithValue {
  desktop('Desktop'),
  tablet('Tablet'),
  mobile('Mobile');

  final String value;

  const ScreenStateWithValue(this.value);
}

class ScreenStatement {
  static Widget getMyCurrentState(
    ScreenState state,
  ) {
    switch (state) {
      case ScreenState.desktop:
        return const Text('Desktop');
      case ScreenState.tablet:
        return const Text('Tablet');

      case ScreenState.mobile:
        return const Text('Mobile');

      default:
        return const Text('Null');
    }
  }
}
