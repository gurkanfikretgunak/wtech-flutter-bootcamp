import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';

import '../../core/data/constants/padding_constants.dart';
import '../../core/data/constants/text_constants.dart';

class InsightsCashbackCardWidget extends StatelessWidget {
  final Size dynamicSize;
  final String totalAmount, minimumAmountPercent, partnerAvgPercent;

  const InsightsCashbackCardWidget({
    Key? key,
    required this.dynamicSize,
    required this.totalAmount,
    required this.minimumAmountPercent,
    required this.partnerAvgPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingConstants.largeVerticalPadding,
      height: dynamicSize.height / 5,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        child: Padding(
          padding: PaddingConstants.largePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 5,
                  children: [
                    const Icon(
                      IconConstants.insightsCashbackTitleIcon,
                    ),
                    Text(
                      TextConstants.insightsCashbackTitleText,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                margin: PaddingConstants.xLargeTopPadding,
                width: double.infinity,
                child: IntrinsicHeight(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '${TextConstants.insightsAmountText}$totalAmount',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Padding(
                            padding: PaddingConstants.mediumVerticalPadding,
                            child:
                                Text(TextConstants.insightsCashbackStartText),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 1,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '$minimumAmountPercent%',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.green[900]),
                          ),
                          Padding(
                            padding: PaddingConstants.mediumVerticalPadding,
                            child: Text(
                                TextConstants.insightsCashbackMiddleText,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.green[900])),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 1,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '$partnerAvgPercent%',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Padding(
                            padding: PaddingConstants.mediumVerticalPadding,
                            child: Text(TextConstants.insightsCashbackEndText),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
