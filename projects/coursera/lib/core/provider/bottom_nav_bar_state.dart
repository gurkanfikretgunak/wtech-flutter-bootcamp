import '../../views/home/explore/explore_view.dart';
import '../../views/home/learn/learn_view.dart';
import '../../views/home/profile/profile_view.dart';
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
