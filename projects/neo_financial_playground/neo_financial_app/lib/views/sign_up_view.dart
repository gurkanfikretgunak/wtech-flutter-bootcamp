import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/provider/onboard_state.dart';
import 'package:neo_financial_app/widgets/custom_elevated_button_widget.dart';
import 'package:provider/provider.dart';

import '../core/data/models/onboard/onboard.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    super.key,
  });

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    OnboardState state = Provider.of<OnboardState>(context, listen: false);
    Onboard currentPage = context.watch<OnboardState>().currentPage;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: PaddingConstants.customSignInPadding,
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
                          child: Icon(currentPage.leftIcon),
                          onPressed: () {
                            if (state.currentPageIndex ==
                                state.onboardPageListLength - 1) {
                              state.changePageIndex(0);
                            } else if (state.currentPageIndex == 0) {
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
                          child: Icon(currentPage.rightIcon),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: PaddingConstants.largeTopPadding,
                      child: Text(
                        currentPage.title,
                        style: const TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 6, child: currentPage.columnWidget),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  currentPage.bottomWidget != null
                      ? currentPage.bottomWidget!
                      : const Padding(
                          padding: PaddingConstants.largeVerticalPadding),
                  Padding(
                    padding: PaddingConstants.largeVerticalPadding,
                    child: CustomElevatedButtonWidget(
                      btnName: currentPage.btnName,
                      btnIcon: currentPage.btnIcon,
                      function: () async {
                        state.nextPage(context,
                            currentPage.columnWidget.runtimeType.toString());
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
