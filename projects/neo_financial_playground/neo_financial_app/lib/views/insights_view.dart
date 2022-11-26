import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/chart_widget.dart';
import 'package:neo_financial_app/widgets/custom_appbar_widget.dart';
import '../core/data/models/chart_data.dart';
import '../widgets/insights_cashback_card_widget.dart';

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
                style: Theme.of(context).textTheme.labelMedium, 'Insights'),
          ),
          rightWidgetList: const [],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('CA\$$amount',
                          style: Theme.of(context).textTheme.labelMedium!),
                    ),
                    const Text('Total spending'),
                  ],
                ),
              ),
              ChartWidget(data: data),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                      'Categories',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              //TODO: Listbuilder will use
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
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
