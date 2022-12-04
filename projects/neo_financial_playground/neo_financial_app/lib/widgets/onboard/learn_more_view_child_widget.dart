import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';

import '../../core/data/constants/padding_constants.dart';
import '../../core/data/constants/route_constants.dart';
import 'custom_linear_progress_indicator_widget.dart';

class LearnMoreViewChildWidget extends StatelessWidget {
  const LearnMoreViewChildWidget(
      {super.key,
      required this.pageIndex,
      required this.headlineText,
      required this.body,
      required this.typeTitle,
      this.miniText});
  final String headlineText, body, typeTitle;
  final String? miniText;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      body: Column(children: [
        Expanded(
          child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Stack(children: [
                Image.asset(
                    fit: BoxFit.fill,
                    //TODO: Images will come from Mock api
                    'assets/images/${typeTitle.toLowerCase()}${pageIndex + 1}.jpg'),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: PaddingConstants.largePadding,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        IconConstants.learnMoreTopLeftIcon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: PaddingConstants.mediumPadding,
                  child: Row(
                    children: [
                      CustomLinearProgressIndicatorWidget(
                        orderIndex: 0,
                        widgetIndex: pageIndex,
                      ),
                      CustomLinearProgressIndicatorWidget(
                        orderIndex: 1,
                        widgetIndex: pageIndex,
                      ),
                      CustomLinearProgressIndicatorWidget(
                        orderIndex: 2,
                        widgetIndex: pageIndex,
                      ),
                      CustomLinearProgressIndicatorWidget(
                        orderIndex: 3,
                        widgetIndex: pageIndex,
                      ),
                    ],
                  ),
                )
              ])),
        ),
        Expanded(
            child: Container(
          color: Colors.black,
          padding: PaddingConstants.largeHorizontalPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: PaddingConstants.largeBottomPadding,
                child: Text(
                  'NEO $typeTitle',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Text(headlineText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.white,
                      )),
              Padding(
                padding: PaddingConstants.largeVerticalPadding,
                child: Text(body,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        )),
              ),
              Padding(
                padding: PaddingConstants.largeTopPadding,
                child: miniText != null
                    ? Text(
                        textAlign: TextAlign.center,
                        miniText!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                      )
                    : null,
              ),
              const Spacer(),
              Padding(
                padding: PaddingConstants.xxLargeVerticalPadding,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RouteConstants.signUpRoute,
                    );
                  },
                  child: Padding(
                    padding: PaddingConstants.largeVerticalPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          TextConstants.learnMoreElevatedButtonIcon,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          IconConstants.learnMoreElevatedButtonIcon,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ]),
    );
  }
}
