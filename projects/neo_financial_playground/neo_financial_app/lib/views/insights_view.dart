import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/custom_appbar_widget.dart';
import 'package:neo_financial_app/widgets/insights/chart_widget.dart';

import '../core/data/constants/padding_constants.dart';
import '../core/data/constants/text_constants.dart';
import '../core/data/models/chart_data.dart';
import '../widgets/insights/insights_cashback_card_widget.dart';

class InsightsView extends StatelessWidget {
  const InsightsView({super.key});

  @override
  Widget build(BuildContext context) {
    late List<ChartData> data = [
      ChartData(x: 'Oct', y: 15, color: Colors.greenAccent),
      ChartData(x: 'Now', y: 25, color: Colors.green),
      ChartData(x: '', y: 0, color: Colors.green),
      ChartData(x: '', y: 0, color: Colors.green),
      ChartData(x: '', y: 0, color: Colors.green),
      ChartData(x: '', y: 0, color: Colors.green),
      ChartData(x: '', y: 0, color: Colors.green),
      ChartData(x: '', y: 0, color: Colors.green),
    ];

    const String month = 'November';
    const double amount = 11.35;
    Size dynamicSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: CustomAppbarWidget(
          preferredSizeHeight: dynamicSize.height / 15,
          leftWidget: FittedBox(
            fit: BoxFit.contain,
            child: Text(
                style: Theme.of(context).textTheme.labelMedium,
                TextConstants.insightsTitleText),
          ),
          rightWidgetList: const [],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: PaddingConstants.largeHorizontalPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      month,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black),
                    ),
                    Padding(
                      padding: PaddingConstants.mediumVerticalPadding,
                      child: Text('${TextConstants.insightsAmountText}$amount',
                          style: Theme.of(context).textTheme.labelMedium!),
                    ),
                    const Text(TextConstants.insightsBodyText),
                  ],
                ),
              ),
              ChartWidget(data: data),
              Padding(
                padding: PaddingConstants.largeHorizontalPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InsightsCashbackCardWidget(
                      totalAmount: '0.00',
                      minimumAmountPercent: '0.5',
                      partnerAvgPercent: '- - - ',
                      dynamicSize: dynamicSize,
                    ),
                    Text(
                      TextConstants.insightsContentTitle,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              //TODO: Listbuilder will use
              Container(
                margin: PaddingConstants.mediumTopPadding,
                color: Colors.white,
                child: Padding(
                  padding: PaddingConstants.mediumVerticalPadding,
                  child: ListTile(
                    leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: PaddingConstants.mediumPadding,
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        )),
                    title: const Text('Grocery'),
                    subtitle: const Text('0 transactions'),
                    trailing: const Text('CA\$0.00'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
