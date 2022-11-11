import 'package:flutter/foundation.dart';

class ColorState with ChangeNotifier, DiagnosticableTreeMixin {
  int _currentPage = 1;

  int get currentPage => _currentPage;

  getMyColorStageOne(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
