import 'package:flutter/cupertino.dart';

enum ScreenState {
  desktop,
  mobile,
  tablet,
}

enum ScreenStateWithValue {
  desktop("Desktop");

  final String value;
  const ScreenStateWithValue(this.value);
}

class ScreenStatement {
  static Widget? getMyCurrentState(ScreenState? state) {
    switch (state) {
      case ScreenState.desktop:
        return const Text("Desktop");
        break;
      case ScreenState.mobile:
        return const Text("Mobile");
        break;
      case ScreenState.tablet:
        return const Text("Tablet");
        break;
      default:
        const Text("No State");
    }
  }
}

getMyCurrentState2(ScreenState state) {
  switch (state) {
    case ScreenState.desktop:
      const Text("Desktop");
      break;
    case ScreenState.mobile:
      const Text("Mobile");
      break;
    case ScreenState.tablet:
      const Text("Tablet");
      break;
    default:
      const Text("No State");
  }
}

void main(List<String> args) {
  ScreenStateWithValue.desktop.value;
}
