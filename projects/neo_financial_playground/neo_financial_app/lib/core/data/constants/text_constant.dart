import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/onboarding/pageview_child_widget.dart';

class TextConstant {
  // Onboard
  static List<Widget> creditPageList = const [
    PageViewChildWidget(
      typeTitle: 'CREDIT',
      pageIndex: 0,
      headlineText: 'Earn an average of 4%\u{00B9} cashback',
      body:
          'Get instant cashback from your everyday spending. All with no annual fees.',
      miniText:
          '\'Average based on current offers at select partners. Cashback varies per bundle, offer, and partner.',
    ),
    PageViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 1,
        headlineText: 'title2',
        body: 'body2'),
    PageViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 2,
        headlineText: 'title3',
        body: 'body3'),
    PageViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 2,
        headlineText: 'title3',
        body: 'body3')
  ];

  static List<Widget> moneyPageList = const [
    PageViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 0,
        headlineText: 'title1',
        body: 'body1'),
    PageViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 1,
        headlineText: 'title2',
        body: 'body2'),
    PageViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 2,
        headlineText: 'title3',
        body: 'body3'),
    PageViewChildWidget(
        typeTitle: 'MONEY', pageIndex: 2, headlineText: 'title3', body: 'body3')
  ];
}
