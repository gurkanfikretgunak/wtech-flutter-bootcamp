import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_financial_app/core/provider/onboarding_load_widget_state.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/text_constant.dart';

class OnboardPageView extends StatelessWidget {
  const OnboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pageList =
        context.watch<OnboardingLoadWidgetState>().currentImageIndex == 0
            ? TextConstant.creditPageList
            : TextConstant.moneyPageList;
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          body: PageView.builder(
              controller:
                  context.watch<OnboardingLoadWidgetState>().pageController,
              itemCount: pageList.length,
              itemBuilder: (context, index) {
                return pageList[index];
              }),
        ));
  }
}
