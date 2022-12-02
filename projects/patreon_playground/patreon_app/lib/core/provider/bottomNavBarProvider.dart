import 'package:flutter/foundation.dart';

class BottomNavBarProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int screenIndex = 0;
  int get fetchCurrentScreenIndex {
    return screenIndex;
  }

  void updateScreenIndex(int newIndex) {
    screenIndex = newIndex;
    notifyListeners();
  }
}
