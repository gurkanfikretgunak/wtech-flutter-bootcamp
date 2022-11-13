import 'package:flutter/material.dart';
import 'package:masterclass_app/ui/pages/introduction_pages/constants/introduction_constans.dart';
import 'package:masterclass_app/ui/pages/introduction_pages/viewmodel/introduction_viewmodel.dart';
import 'package:masterclass_app/ui/pages/introduction_pages/widgets/introduction_indicators.dart';
import 'package:provider/provider.dart';

class IntroductionPage extends StatefulWidget {
  IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Expanded(
                flex: 4,
                child: PageView.builder(
                  itemCount: IntroductionPageConstants.slider.length,
                  onPageChanged: (value) =>
                      context.read<IntroductionPageVM>().setCurrentIndex(value),
                  itemBuilder: (_, index) =>
                      IntroductionPageConstants.slider[index],
                ),
              ),
              IntroductionIndicators(
                  listLenght: IntroductionPageConstants.slider.length),
              const Spacer(flex: 1)
            ],
          ),
        ),
      ),
    );
  }
}
