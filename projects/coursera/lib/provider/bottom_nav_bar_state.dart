import 'package:coursera/views/explore_view.dart';
import 'package:coursera/views/learn_view.dart';
import 'package:coursera/views/profile_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarState with ChangeNotifier, DiagnosticableTreeMixin {
  List<Widget> pageOptions = <Widget>[
    const ExploreView(),
    const LearnView(),
    const ProfileView(),
  ];

  int _currentPage = 0;

  int get currentPage => _currentPage;

  changePage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
