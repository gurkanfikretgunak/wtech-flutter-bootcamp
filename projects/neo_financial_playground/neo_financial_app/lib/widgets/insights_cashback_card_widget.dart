import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: dynamicSize.height / 5,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 5,
                  children: [
                    const Icon(
                      Icons.auto_awesome,
                    ),
                    Text(
                      'Cashback',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                width: double.infinity,
                child: IntrinsicHeight(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'CA\$$totalAmount',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text('Total'),
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
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text('Minimum',
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
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text('Partner Avg.'),
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
