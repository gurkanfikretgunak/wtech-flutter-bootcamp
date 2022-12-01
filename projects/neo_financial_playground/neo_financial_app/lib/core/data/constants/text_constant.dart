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
        headlineText: 'Find cashback rewards near you',
        body:
            'There are over 7.000 places across Canada and online with unique offers.'),
    PageViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 2,
        headlineText: 'Get more from a credit card',
        body:
            'View powerful insights, tap to freeze, receive real-time notifications, and more.'),
    PageViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 3,
        headlineText: 'Boost your rewards and get more perks',
        body:
            'Upgrade your card with Bundles to get ondemand extras with zero commitments.')
  ];

  static List<Widget> moneyPageList = const [
    PageViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 0,
        headlineText: 'One of Canada\'s best rates',
        body:
            'Get 2.25%* interest - that\'s up to 225x\' more than with a traditional bank.ⓘ'),
    PageViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 1,
        headlineText: 'No fees, no suprises',
        body:
            'Enjoy free unllimited transactions and Interac e-Transfers®, with zero monthly fees and no minimum balance.'),
    PageViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 2,
        headlineText: 'Your money, your way',
        body:
            'What\'s yours anytime with unlimited free transactions and Interac e-Transfers®.'),
    PageViewChildWidget(
      typeTitle: 'MONEY',
      pageIndex: 3,
      headlineText: 'Know your money is safe',
      body:
          'The Neo Money account is provided by Concentra Bank, a CDIC member institution, and is eligible for CDIC deposit protection.',
      miniText:
          'Deposits held in Neo Money accounts are combined with eligible deposits held at Concentra Bank, for up to \$100.000 of deposit protection, per category, per depositor.',
    )
  ];
}
