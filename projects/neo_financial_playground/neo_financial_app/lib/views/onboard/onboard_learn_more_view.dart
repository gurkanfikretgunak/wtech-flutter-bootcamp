import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_financial_app/core/provider/onboard_state.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/text_constants.dart';

class OnboardLearnMoreView extends StatelessWidget {
  const OnboardLearnMoreView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = context.watch<OnboardState>().currentImageIndex == 0
        ? TextConstants.creditPageList
        : TextConstants.moneyPageList;
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          body: PageView.builder(
              controller: context.watch<OnboardState>().pageController,
              itemCount: pageList.length,
              itemBuilder: (context, index) {
                return pageList[index];
              }),
        ));
  }
}
