import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/onboard/learn_more_view_child_widget.dart';

class TextConstants {
  TextConstants._();

  // APP
  static const String appTitle = 'Neo Financial';
  static const String splashTitle = 'neo';
  static const String splashImagePath = 'assets/images/people-splash.png';

  // BOTTOM NAVIGATION BAR
  static const String bottomNavBarElementLabel1 = 'Accounts';
  static const String bottomNavBarElementLabel2 = 'Insights';
  static const String bottomNavBarElementLabel3 = 'Rewards';
  static const String bottomNavBarElementLabel4 = 'Payments';
  static const String bottomNavBarElementLabel5 = 'Card';

  // ONBOARD
  // Onboard Home
  static const String onboardTabBarStartLabel = 'Credit';
  static const String onboardTabBarEndLabel = 'Money';
  static const String onboardOutlinedButtonText = 'Learn more';
  static const String onboardElevatedButtonText = 'Create a profile';
  static const String onboardBottomText = 'Already with Neo?';
  static const String onboardBottomTextButtonText = 'Sign in';

  // Learn More
  static const String learnMoreElevatedButtonIcon = 'Create a profile';
  //TODO: This side will change, can be come from mock api
  static List<Widget> creditPageList = const [
    LearnMoreViewChildWidget(
      typeTitle: 'CREDIT',
      pageIndex: 0,
      headlineText: 'Earn an average of 4%\u{00B9} cashback',
      body:
          'Get instant cashback from your everyday spending. All with no annual fees.',
      miniText:
          '\'Average based on current offers at select partners. Cashback varies per bundle, offer, and partner.',
    ),
    LearnMoreViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 1,
        headlineText: 'Find cashback rewards near you',
        body:
            'There are over 7.000 places across Canada and online with unique offers.'),
    LearnMoreViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 2,
        headlineText: 'Get more from a credit card',
        body:
            'View powerful insights, tap to freeze, receive real-time notifications, and more.'),
    LearnMoreViewChildWidget(
        typeTitle: 'CREDIT',
        pageIndex: 3,
        headlineText: 'Boost your rewards and get more perks',
        body:
            'Upgrade your card with Bundles to get ondemand extras with zero commitments.')
  ];

  static List<Widget> moneyPageList = const [
    LearnMoreViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 0,
        headlineText: 'One of Canada\'s best rates',
        body:
            'Get 2.25%* interest - that\'s up to 225x\' more than with a traditional bank.ⓘ'),
    LearnMoreViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 1,
        headlineText: 'No fees, no suprises',
        body:
            'Enjoy free unllimited transactions and Interac e-Transfers®, with zero monthly fees and no minimum balance.'),
    LearnMoreViewChildWidget(
        typeTitle: 'MONEY',
        pageIndex: 2,
        headlineText: 'Your money, your way',
        body:
            'What\'s yours anytime with unlimited free transactions and Interac e-Transfers®.'),
    LearnMoreViewChildWidget(
      typeTitle: 'MONEY',
      pageIndex: 3,
      headlineText: 'Know your money is safe',
      body:
          'The Neo Money account is provided by Concentra Bank, a CDIC member institution, and is eligible for CDIC deposit protection.',
      miniText:
          'Deposits held in Neo Money accounts are combined with eligible deposits held at Concentra Bank, for up to \$100.000 of deposit protection, per category, per depositor.',
    )
  ];

  // SIGN UP
  // Sign Up Home
  static const String signUpHomeUnderAppBarText = 'Profile Creation';
  static const String signUpHomeTitleText = 'Welcome to Neo';
  static const String signUpHomeBodyText =
      'Create a commitment-free profile to explore financial products and rewards.';
  static const String signUpHomeTextFormFieldEmailText = 'Email';
  static const String signUpHomeTextFormFieldErrorEmailText =
      'Please enter a valid email';
  static const String signUpHomeTextFormFieldPasswordText = 'Password';
  static const String signUpHomePasswordControlLeftText = 'Password strength';
  static const String signUpHomePasswordInformationText =
      'Passwords must be a minimum of 8 characters. Include one letter, and one number or symbol.';
  static const String signUpHomePasswordErrorText =
      'Make your password even stronger by including more than 10 characters, numbers, symbols, upper and lowercase letters.';
  static const String signUpHomeTextButtonText = 'Add a promo code';
  static const List<String> signUpHomeRichTextList = [
    'By continuing, you agree to the ',
    'Neo Platform Terms & Conditions',
    ', ',
    'Rewards Policy',
    ', and ',
    'Privacy Policy',
    '.'
  ];
  static const String signUpHomeElevatedButtonText = 'Continue';

  // Mobile Number
  static const String mobileNumberUnderAppBarText = 'Profile Creation';
  static const String mobileNumberTitleText = 'What\'s your mobile number?';
  static const String mobileNumberBodyText =
      'A verification code will be sent tot this number.';
  static const String mobileNumberTextFormFieldText = 'Mobile Number';
  static const String mobileNumberTextFormFieldErrorText =
      'Plese enter a valid number';
  static const String mobileNumberElevatedButtonText = 'Apply';

  // Promo Code
  static const String promoCodeUnderAppBarText = 'Profile Creation';
  static const String promoCodeTitleText = 'Have a promo code?';
  static const String promoCodeTextFormFieldText = 'Code';
  static const String promoCodeTextFormFieldErrorText =
      'Plese enter a valid code';
  static const String promoCodeElevatedButtonText = 'Apply';

  // SIGN IN
  static const String signInBottomTitleText = 'Welcome back';
  static const String signInElevatedButtonText = 'Sign in';
  static const String signInBottomText = 'Need a password?';
  // Email and password widget same with sign_up side

  // ACCOUNTS
  static const String accountsElevatedButtonText = r'CA$';
  static const String accountsTitleText = 'Get your first product';
  static const String accountsBodyText =
      'Welcome! It\'ll take just a few minutes to apply for your first product.';
  static const String accountsContentTitleText = 'Explore Products';
  static const String accountsTextButtonText = 'Show all';

  // INSIGHTS
  static const String insightsTitleText = 'Insights';
  static const String insightsAmountText = r'CA$';
  static const String insightsBodyText = 'Total spending';
  static const String insightsCashbackTitleText = 'Cashback';
  static const String insightsCashbackStartText = 'Total';
  static const String insightsCashbackMiddleText = 'Minimum';
  static const String insightsCashbackEndText = 'Partner Avg.';
  static const String insightsContentTitle = 'Categories';

  // REWARDS
  static const String rewardsAmountText = r'CA$';

  // PAYMENTS
  static const String paymentsTabBarStartLabel = 'Transfers';
  static const String paymentsTabBarEndLabel = 'Scheduled';
  static const String paymentsStartIconText = 'Send';
  static const String paymentsMiddleIconText = 'Request';
  static const String paymentsEndIconText = 'Pay a bill';
  static const String paymentsContentTitleText = 'Recent payees';
  static const String paymentsTextButtonText = 'See all';

  // CARD
  static const String cardTitleText = 'Card';
  static const String cardCreditCardTitle = 'neo';
  static const String cardMasterCardImagePath =
      'assets/logos/mastercard-logo.png';
  static const String cardStartIconText = 'Freeze';
  static const String cardMiddleIconText = 'View';
  static const String cardEndIconText = 'Settings';
  static const String cardElevatedButtonText = 'Add to Apple Wallet';
}
