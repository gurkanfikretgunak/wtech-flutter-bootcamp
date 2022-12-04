import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neo_financial_app/views/accounts_view.dart';
import 'package:neo_financial_app/views/card_view.dart';
import 'package:neo_financial_app/views/insights_view.dart';
import 'package:neo_financial_app/views/payments_view.dart';
import 'package:neo_financial_app/views/rewards_view.dart';

class NavigationState with ChangeNotifier, DiagnosticableTreeMixin {
  final List<Widget> _pages = const <Widget>[
    AccountsView(),
    InsightsView(),
    RewardsView(),
    PaymentsView(),
    CardView(),
  ];

  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;
  Widget get currentPage => _pages.elementAt(_currentPageIndex);

  changePage(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }
}
