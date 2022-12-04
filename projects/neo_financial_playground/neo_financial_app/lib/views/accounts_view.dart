import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';

import '../core/data/constants/icon_constants.dart';
import '../core/data/constants/route_constants.dart';
import '../core/data/constants/text_constants.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/custom_card_widget.dart';
import '../widgets/title_and_button_widget.dart';

class AccountsView extends StatelessWidget {
  const AccountsView({super.key});

  @override
  Widget build(BuildContext context) {
    String amount = '0.00'; //TODO: Value will come from Mock api

    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: CustomAppbarWidget(
            preferredSizeHeight: MediaQuery.of(context).size.height / 15,
            leftWidget: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: Wrap(
                spacing: 5,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  const Icon(IconConstants.accountElevatedButtonIcon),
                  Text('${TextConstants.accountsElevatedButtonText}$amount'),
                ],
              ),
              onPressed: () {},
            ),
            rightWidgetList: [
              CircleAvatar(
                backgroundColor: Colors.black12,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconConstants.accountTopRightStartIcon,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: PaddingConstants.largeHorizontalPadding,
                child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteConstants.profileRoute,
                      );
                    },
                    icon: const Icon(
                      IconConstants.accountTopRightEndIcon,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Container(
              padding: PaddingConstants.largeVerticalPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: PaddingConstants.largeHorizontalPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: PaddingConstants.mediumVerticalPadding,
                            child: Text(TextConstants.accountsTitleText,
                                style: Theme.of(context).textTheme.labelMedium),
                          ),
                          const Text(TextConstants.accountsBodyText),
                          const Spacer(),
                          const TitleAndButtonWidget(
                            title: TextConstants.accountsContentTitleText,
                            buttonName: TextConstants.accountsTextButtonText,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      padding: PaddingConstants.largeLeftPadding,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: const CustomCardWidget(
                          //TODO: Data will be come from MockAPI
                          image: 'assets/images/homepage-card.jpg',
                          imageLabel: 'Neo Card',
                          title: 'Get Canada\'s best cashback card\u{00B9}',
                          text:
                              'Earn an average of 5%\u{00B2} back from your everyday spending',
                          buttonName: 'Get',
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
