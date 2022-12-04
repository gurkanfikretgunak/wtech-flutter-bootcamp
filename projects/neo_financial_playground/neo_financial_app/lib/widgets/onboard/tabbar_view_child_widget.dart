import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';

import '../../core/data/constants/icon_constants.dart';
import '../../core/data/constants/route_constants.dart';
import '../custom_elevated_button_widget.dart';

class TabBarViewChildWidget extends StatelessWidget {
  final String headlineText, bodyText;
  final int pageIndex;
  const TabBarViewChildWidget({
    Key? key,
    required this.headlineText,
    required this.bodyText,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
          child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraint.maxHeight),
        child: IntrinsicHeight(
          child: Padding(
            padding: PaddingConstants.largePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(headlineText,
                    style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(
                  height: 20,
                ),
                Text(bodyText, style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(),
                Padding(
                  padding: PaddingConstants.largeVerticalPadding,
                  child: Center(
                    child: Column(
                      children: [
                        const Icon(
                          IconConstants.onboardBottomIcon,
                          size: 30,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RouteConstants.onboarBuilderRoute,
                              );
                            },
                            child: const Text(
                                TextConstants.onboardOutlinedButtonText)),
                      ],
                    ),
                  ),
                ),
                CustomElevatedButtonWidget(
                  btnName: TextConstants.onboardElevatedButtonText,
                  btnIcon: IconConstants.onboardElevatedButtonIcon,
                  function: () {
                    Navigator.pushNamed(
                      context,
                      RouteConstants.signUpRoute,
                    );
                  },
                ),
                Padding(
                  padding: PaddingConstants.largeBottomPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(TextConstants.onboardBottomText),
                      Padding(
                        padding: PaddingConstants.smallHorizontalPadding,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              RouteConstants.signInRoute,
                            );
                          },
                          child: const Text(
                            TextConstants.onboardBottomTextButtonText,
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    });
  }
}
