import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/onboarding/phone_number_column_widget.dart';
import 'package:neo_financial_app/widgets/onboarding/promo_code_column_widget.dart';
import 'package:neo_financial_app/widgets/onboarding/welcome_column_widget.dart';
import '../../widgets/onboarding/privacy_richtext_widget.dart';
import '../models/onboarding/onboard.dart';

class OnboardingLoadWidgetState with ChangeNotifier, DiagnosticableTreeMixin {
  List<Onboard> widgetOptions = <Onboard>[
    Onboard(
        leftIcon: Icons.arrow_back,
        rightIcon: null,
        columnWidget: const WelcomeColumnWidget(),
        title: 'Profile Creation',
        bottomWidget: const PrivacyTextRichWidget(),
        btnName: 'Continue'),
    Onboard(
        leftIcon: Icons.arrow_back,
        rightIcon: null,
        columnWidget: const PhoneNumberColumnWidget(),
        title: 'Profile Creation',
        bottomWidget: const Text(''),
        btnName: 'Apply'),
    Onboard(
        leftIcon: Icons.arrow_back,
        rightIcon: null,
        columnWidget: const PromocodeColumnWidget(),
        title: 'Profile Creation',
        bottomWidget: const Text(''),
        btnName: 'Apply'),
  ];

  int _currentWidgetIndex = 0;
  int get currentWidget => _currentWidgetIndex;

  changePageIndex(int index) {
    _currentWidgetIndex = index;
    notifyListeners();
  }

  backPage() {
    _currentWidgetIndex -= 1;
    notifyListeners();
  }

  goPage() {
    _currentWidgetIndex += 1;
    notifyListeners();
  }
}
