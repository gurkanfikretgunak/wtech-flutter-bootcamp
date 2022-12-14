import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/provider/insights_state.dart';
import 'package:neo_financial_app/widgets/custom_appbar_widget.dart';
import 'package:neo_financial_app/widgets/insights/chart_widget.dart';
import 'package:neo_financial_app/widgets/insights/insights_cashback_card_widget.dart';
import 'package:provider/provider.dart';

class InsightsView extends StatefulWidget {
  const InsightsView({super.key});

  @override
  State<InsightsView> createState() => _InsightsViewState();
}

class _InsightsViewState extends State<InsightsView> {
  @override
  void initState() {
    Provider.of<InsightsState>(context, listen: false)
        .setChartDataList(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<InsightsState>(context, listen: false)
          .changeMonthInformations(context, null);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final insightState = Provider.of<InsightsState>(context, listen: true);
    Size dynamicSize = MediaQuery.of(context).size;

    String amount = insightState.totalSpendingAmount.toString();
    String cashbackTotalAmount = insightState.cashbackTotalAmount.toString();
    String cashbackPercent = insightState.cashbackPercent.toString();
    String cashbackAvgPercent = insightState.cashbackPartnetAvg.toString();
    String month = insightState.monthTitle.toString();

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
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: insightState.getChartDatas.length,
                  onPageChanged: (value) =>
                      insightState.changeIsFistPageStatus(),
                  itemBuilder: (context, index) {
                    return ChartWidget(data: insightState.getChartDatas[index]);
                  },
                ),
              ),
              Center(
                child: Wrap(
                  spacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: insightState.isFirstPage
                          ? Colors.black
                          : Colors.green,
                      radius: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: insightState.isFirstPage
                          ? Colors.green
                          : Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding: PaddingConstants.largeHorizontalPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InsightsCashbackCardWidget(
                      totalAmount: cashbackTotalAmount,
                      minimumAmountPercent: cashbackPercent,
                      partnerAvgPercent: cashbackAvgPercent,
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
