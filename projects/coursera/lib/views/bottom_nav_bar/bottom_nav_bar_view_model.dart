import 'package:coursera/core/base/base_view_model.dart';
import 'package:flutter/material.dart';
import '../../views/bottom_nav_bar/explore/explore_view.dart';
import 'learn/learn_view.dart';
import '../../views/bottom_nav_bar/profile/profile_view.dart';

class BottomNavBarViewModel extends IViewModel<BottomNavBarViewModel> {
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
