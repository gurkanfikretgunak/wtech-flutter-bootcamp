import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';

import '../widgets/custom_icon_button_with_label_widget.dart';
import '../widgets/custom_information_card_widget.dart';
import '../widgets/title_and_button_widget.dart';

class PaymentsView extends StatelessWidget {
  const PaymentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: [
                      Tab(text: TextConstants.paymentsTabBarStartLabel),
                      Tab(text: TextConstants.paymentsTabBarEndLabel),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: PaddingConstants.largePadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 25,
                            children: const [
                              CustomIconButtonWithLabelWidget(
                                label: TextConstants.paymentsStartIconText,
                                icon: IconConstants.paymentsStartIcon,
                              ),
                              CustomIconButtonWithLabelWidget(
                                label: TextConstants.paymentsMiddleIconText,
                                icon: IconConstants.paymentsMiddleIcon,
                              ),
                              CustomIconButtonWithLabelWidget(
                                label: TextConstants.paymentsEndIconText,
                                icon: IconConstants.paymentsEndIcon,
                              ),
                            ],
                          ),
                          CustomInformationCardWidget(
                            title: const Text('Autodeposit',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            titleMargin: 0,
                            body:
                                'Get Interac e-Transfers® deposited directly into your account.',
                            color: Colors.blue.shade100,
                            button: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black),
                                child: Row(
                                  children: const [
                                    Text('Register'),
                                    Icon(Icons.arrow_forward)
                                  ],
                                )),
                            bottomRightWidget: null,
                            isCloseButtonActive: true,
                          ),
                          const TitleAndButtonWidget(
                            title: TextConstants.paymentsContentTitleText,
                            buttonName: TextConstants.paymentsTextButtonText,
                          ),
                        ],
                      ),
                    ),
                    //TODO: Listbuilder will use
                    Container(
                      color: Colors.white,
                      child: const ListTile(
                        leading: CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            child: Text('ZL')),
                        title: Text('Zheng Jun Dexter Lee'),
                        trailing: Text('(You)'),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: const [
                    Text('Scheduled'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
