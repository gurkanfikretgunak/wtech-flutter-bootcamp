import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/onboarding_load_widget_state.dart';
import 'package:neo_financial_app/widgets/onboarding/custom_elevated_button_widget.dart';
import 'package:provider/provider.dart';

import '../../core/data/models/onboarding/onboard.dart';

class RegisterTemplateView extends StatefulWidget {
  const RegisterTemplateView({
    super.key,
  });

  @override
  State<RegisterTemplateView> createState() => _RegisterTemplateViewState();
}

class _RegisterTemplateViewState extends State<RegisterTemplateView> {
  @override
  Widget build(BuildContext context) {
    OnboardingLoadWidgetState state =
        Provider.of<OnboardingLoadWidgetState>(context, listen: false);
    Onboard widgetPage =
        context.watch<OnboardingLoadWidgetState>().widgetOptions.elementAt(
              context.watch<OnboardingLoadWidgetState>().currentWidget,
            );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                          ),
                          child: Icon(widgetPage.leftIcon),
                          onPressed: () {
                            if (state.currentWidget ==
                                state.widgetOptions.length - 1) {
                              state.changePageIndex(0);
                            } else if (state.currentWidget == 0) {
                              Navigator.of(context).pop();
                            } else {
                              state.backPage();
                            }
                          },
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                          ),
                          child: Icon(widgetPage.rightIcon),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        widgetPage.title,
                        style: const TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 6, child: widgetPage.columnWidget),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  if (widgetPage.bottomWidget != null) widgetPage.bottomWidget!,
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: CustomElevatedButtonWidget(
                      btnName: widgetPage.btnName,
                      btnIcon: widgetPage.btnIcon,
                      function: () async {
                        state.nextPage(context,
                            widgetPage.columnWidget.runtimeType.toString());
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
