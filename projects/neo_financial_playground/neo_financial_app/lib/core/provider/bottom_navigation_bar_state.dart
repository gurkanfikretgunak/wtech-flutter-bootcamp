import 'package:flutter/foundation.dart';

class BottomNavigationBarState with ChangeNotifier, DiagnosticableTreeMixin {
  List<String> pages = <String>[
    'Homeview',
    'Insights',
    'Rewards',
    'Payments',
    'Card',
  ];

  int _currentPage = 0;
  int get currentPage => _currentPage;

  changePage(int index) {
    _currentPage = index;
    notifyListeners();
  }
}
