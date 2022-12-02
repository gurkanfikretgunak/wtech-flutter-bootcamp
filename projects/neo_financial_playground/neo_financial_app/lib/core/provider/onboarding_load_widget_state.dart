import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/sign_up_state.dart';
import 'package:neo_financial_app/widgets/onboarding/phone_number_column_widget.dart';
import 'package:neo_financial_app/widgets/onboarding/promo_code_column_widget.dart';
import 'package:neo_financial_app/widgets/onboarding/welcome_column_widget.dart';
import 'package:provider/provider.dart';

import '../../widgets/onboarding/privacy_richtext_widget.dart';
import '../data/models/onboarding/onboard.dart';

class OnboardingLoadWidgetState with ChangeNotifier, DiagnosticableTreeMixin {
  List<Onboard> widgetOptions = <Onboard>[
    Onboard(
        leftIcon: Icons.arrow_back,
        rightIcon: null,
        columnWidget: WelcomeColumnWidget(),
        title: 'Profile Creation',
        bottomWidget: const PrivacyTextRichWidget(),
        btnName: 'Continue',
        btnIcon: Icons.arrow_forward),
    Onboard(
        leftIcon: Icons.arrow_back,
        rightIcon: null,
        columnWidget: PhoneNumberColumnWidget(),
        title: 'Profile Creation',
        bottomWidget: null,
        btnName: 'Apply',
        btnIcon: Icons.arrow_forward),
    Onboard(
        leftIcon: Icons.arrow_back,
        rightIcon: null,
        columnWidget: PromocodeColumnWidget(),
        title: 'Profile Creation',
        bottomWidget: null,
        btnName: 'Apply',
        btnIcon: null),
  ];

  int _currentWidgetIndex = 0;
  int get currentWidget => _currentWidgetIndex;

  int _currentImageIndex = 0;
  String get currentImage =>
      'assets/images/onboarding-background${_currentImageIndex + 1}.jpg';
  int get currentImageIndex => _currentImageIndex;

  final PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;

  changePageIndex(int index) {
    _currentWidgetIndex = index;
    notifyListeners();
  }

  backPage() {
    _currentWidgetIndex -= 1;
    notifyListeners();
  }

  nextPage(BuildContext context, String pageType) {
    SignUpState signUpState = Provider.of<SignUpState>(context, listen: false);

    if (pageType == 'WelcomeColumnWidget') {
      !signUpState.emailStatus &&
              (['Middle', 'Strong'].contains(signUpState.passwordStatus))
          ? _currentWidgetIndex += 1
          : null;
    } else if (pageType == 'PromocodeColumnWidget') {
      signUpState.promoCode.length >= 5 ? _currentWidgetIndex = 0 : null;
    } else if (pageType == 'PhoneNumberColumnWidget') {
      signUpState.phone.length >= 14
          ? {
              signUpState.signUp(),
              Navigator.pushNamed(
                context,
                '/Home',
              ),
              signUpState.clearAll(),
            }
          : null;
    } else {
      _currentWidgetIndex += 1;
    }

    notifyListeners();
  }

  changeImageIndex(int index) {
    _currentImageIndex = index;
    notifyListeners();
  }

  changePageContoller(index) {
    _pageController.animateToPage(index,
        curve: Curves.ease, duration: const Duration(seconds: 1));
    notifyListeners();
  }
}
