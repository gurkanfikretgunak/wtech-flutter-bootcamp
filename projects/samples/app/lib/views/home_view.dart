import 'package:app/constants/custom_contants.dart';
import 'package:app/widgets/bottom_app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/mostp_cards_widget.dart';
import '../widgets/custom_widgets.dart';
import '../widgets/popular_cards_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomWidgets.customAppBar(),
        body: Container(
          color: Colors.grey[50],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21.0, right: 21.0),
                child: _CategoriesWidget(
                    topicText: CustomTextConstants().topicMost, viewText: CustomTextConstants().views),
              ),
              const Expanded(
                flex: 4,
                child: CustomProductCards(heighty: 0.10, widthx: 0.5),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0, right: 21.0),
                      child: _CategoriesWidget(
                          topicText: CustomTextConstants().topicPopular, viewText: CustomTextConstants().views),
                    ),
                    const CustomPopularProductCards(heighty: 0.14, widthx: 0.5),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar());
  }
}

class _CategoriesWidget extends StatelessWidget {
  const _CategoriesWidget({
    Key? key,
    required this.topicText,
    required this.viewText,
  }) : super(key: key);
  final String topicText;
  final String viewText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          topicText,
          style: Theme.of(context).textTheme.headline1?.copyWith(
                color: Colors.black.withOpacity(0.9),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          viewText,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Colors.grey.withOpacity(0.9),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
        ),
      ],
    );
  }
}
