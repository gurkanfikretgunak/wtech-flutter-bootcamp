import 'package:flutter/material.dart';

enum ScreenState { desktop, mobile, tablet, largeScreen }

enum ScreenStateWithValue {
  desktop("Eliff");

  final String value;
  const ScreenStateWithValue(this.value);
}

class ScreenStatement {
  static getMyCurrentState(ScreenState state) {
    switch (state) {
      case ScreenState.desktop:
        const Text("Desktop");
        break;
      case ScreenState.largeScreen:
        return const Text("LargeScreen");

      case ScreenState.mobile:
        return const Text("Mobile");

      case ScreenState.tablet:
        return const Text("Tablet");

      default:
        const Text("No State BRUHH");
    }
  }
}
