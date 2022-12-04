import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/provider/user_state.dart';
import 'package:neo_financial_app/widgets/sign_up/promo_code_widget.dart';
import 'package:neo_financial_app/widgets/sign_up/sign_up_home_widget.dart';
import 'package:provider/provider.dart';

import '../../widgets/sign_up/mobile_number_widget.dart';
import '../../widgets/sign_up/privacy_richtext_widget.dart';
import '../data/constants/route_constants.dart';
import '../data/models/onboard/onboard.dart';

class OnboardState with ChangeNotifier, DiagnosticableTreeMixin {
  final List<Onboard> _onboardList = <Onboard>[
    Onboard(
        leftIcon: IconConstants.signUpHomeAppBarLeftIcon,
        rightIcon: null,
        columnWidget: SignUpHomeWidget(),
        title: TextConstants.signUpHomeUnderAppBarText,
        bottomWidget: const PrivacyRichTextWidget(),
        btnName: TextConstants.signUpHomeElevatedButtonText,
        btnIcon: IconConstants.signUpHomeElevatedButtonIcon),
    Onboard(
        leftIcon: IconConstants.mobileNumberAppBarLeftIcon,
        rightIcon: null,
        columnWidget: MobileNumberWidget(),
        title: TextConstants.mobileNumberUnderAppBarText,
        bottomWidget: null,
        btnName: TextConstants.mobileNumberElevatedButtonText,
        btnIcon: IconConstants.mobileNumberElevatedButtonIcon),
    Onboard(
        leftIcon: IconConstants.promoCodeAppBarLeftIcon,
        rightIcon: null,
        columnWidget: PromoCodeWidget(),
        title: TextConstants.promoCodeUnderAppBarText,
        bottomWidget: null,
        btnName: TextConstants.promoCodeElevatedButtonText,
        btnIcon: null),
  ];

  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;
  Onboard get currentPage => _onboardList.elementAt(_currentPageIndex);
  int get onboardPageListLength => _onboardList.length;

  changePageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  backPage() {
    _currentPageIndex -= 1;
    notifyListeners();
  }

  nextPage(BuildContext context, String pageType) {
    UserState signUpState = Provider.of<UserState>(context, listen: false);

    if (pageType == 'SignUpHomeWidget') {
      !signUpState.emailStatus &&
              (['Middle', 'Strong'].contains(signUpState.passwordStatus))
          ? _currentPageIndex += 1
          : null;
    } else if (pageType == 'PromoCodeWidget') {
      signUpState.promoCode.length >= 5 ? _currentPageIndex = 0 : null;
    } else if (pageType == 'MobileNumberWidget') {
      signUpState.phone.length >= 14
          ? {
              signUpState.signUp(),
              Navigator.pushNamed(
                context,
                RouteConstants.homeRoute,
              ),
              signUpState.clearAll(),
            }
          : null;
    } else {
      _currentPageIndex += 1;
    }

    notifyListeners();
  }

  // Learn More Part
  int _currentImageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  String get currentImage =>
      'assets/images/onboard-background${_currentImageIndex + 1}.jpg';
  int get currentImageIndex => _currentImageIndex;
  PageController get pageController => _pageController;

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
