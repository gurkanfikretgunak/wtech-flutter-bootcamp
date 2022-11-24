import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neo_financial_app/views/card_view.dart';
import 'package:neo_financial_app/views/accounts_view.dart';
import 'package:neo_financial_app/views/insights_view.dart';
import 'package:neo_financial_app/views/payments_view.dart';
import 'package:neo_financial_app/views/rewards_view.dart';

class BottomNavigationBarState with ChangeNotifier, DiagnosticableTreeMixin {
  List<Widget> pages = const <Widget>[
    AccountsView(),
    InsightsView(),
    RewardsView(),
    PaymentsView(),
    CardView(),
  ];

  int _currentPage = 0;
  int get currentPage => _currentPage;

  changePage(int index) {
    _currentPage = index;
    notifyListeners();
  }
}
