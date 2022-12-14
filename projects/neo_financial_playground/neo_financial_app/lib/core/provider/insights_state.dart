import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/data/models/chart_data.dart';
import 'package:neo_financial_app/core/data/models/user.dart';
import 'package:neo_financial_app/core/provider/user_state.dart';
import 'package:provider/provider.dart';

class InsightsState with ChangeNotifier, DiagnosticableTreeMixin {
  String? _monthTitle;
  double? _totalSpendingAmount,
      _cashbackTotalAmount,
      _cashbackPercent,
      _cashbackPartnetAvg;
  bool _isFirstPage = true;
  MonthlyOutgoing? currentMonth;
  late final List<ChartData> _chartData1 = [
    /* ChartData(x: 'Feb', y: 15, colorIndex: 2), */
  ];
  late final List<ChartData> _chartData2 = [
    /*  ChartData(x: 'Jul', y: 15, colorIndex: 1), */
  ];

  String? get monthTitle => _monthTitle;
  bool get isFirstPage => _isFirstPage;
  double? get totalSpendingAmount => _totalSpendingAmount;
  double? get cashbackTotalAmount => _cashbackTotalAmount;
  double? get cashbackPercent => _cashbackPercent;
  double? get cashbackPartnetAvg => _cashbackPartnetAvg;
  List<List<ChartData>> get getChartDatas => _chartData1.isEmpty
      ? [_chartData2, _chartData1]
      : [_chartData1, _chartData2];

  changeMonthInformations(BuildContext context, int? columnIndex) {
    final userState = Provider.of<UserState>(context, listen: false);
    MonthlyOutgoing? currentMonth;
    if (columnIndex != null) {
      int monthIndex = isFirstPage ? columnIndex : columnIndex + 6;
      int listIndex = userState.user!.monthlyOutgoings!
          .indexWhere((st) => st.monthIndex == monthIndex);
      currentMonth = userState.user!.monthlyOutgoings?[listIndex];
    } else {
      currentMonth = userState.user!.monthlyOutgoings!.first;
    }
    _monthTitle = TextConstants.months[currentMonth!.monthIndex!];
    _totalSpendingAmount = currentMonth.totalSpending;
    _cashbackTotalAmount = currentMonth.cashbackTotal!;
    _cashbackPercent = currentMonth.cashbackPerent;
    _cashbackPartnetAvg = currentMonth.outgoingAvg;
    notifyListeners();
  }

  changeIsFistPageStatus() {
    _isFirstPage = !_isFirstPage;
    notifyListeners();
  }

  setChartDataList(BuildContext context) {
    final userState = Provider.of<UserState>(context, listen: false);

    for (var i in userState.user!.monthlyOutgoings!) {
      if (i.monthIndex! <= 5) {
        _chartData1.add(ChartData(
            x: TextConstants.monthsShort[i.monthIndex!],
            y: i.totalSpending ?? 0,
            colorIndex: i.monthIndex!));
      } else {
        _chartData2.add(ChartData(
            x: TextConstants.monthsShort[i.monthIndex!],
            y: i.totalSpending ?? 0,
            colorIndex: i.monthIndex!));
      }
    }
  }
}
