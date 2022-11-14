import 'package:flutter/material.dart';

enum ScreenState { desktop, mobile, tablet, largeScreen }

enum LightBulbStatus {
  on(1),
  off(0);

  // can add more properties or getters/methods if needed
  final int value;

  // can use named parameters if you want
  const LightBulbStatus(this.value);
}

enum ScreenStateWithValue {
  desktop("");

  final String value;
  const ScreenStateWithValue(this.value);
}

class ScreenStatement {
  static getMyCurrentState(ScreenState state) {
    switch (state) {
      case ScreenState.desktop:
        return const Text("Desktop");
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

void main(List<String> args) {
  ScreenStateWithValue.desktop.value;
}