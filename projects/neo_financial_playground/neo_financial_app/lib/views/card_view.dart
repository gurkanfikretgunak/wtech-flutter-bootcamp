import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:neo_financial_app/widgets/custom_icon_button_with_label_widget.dart';
import 'package:neo_financial_app/widgets/custom_information_card_widget.dart';

import '../core/data/constants/padding_constants.dart';
import '../core/data/constants/text_constants.dart';
import '../widgets/custom_appbar_widget.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    Size dynamicSize = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: CustomAppbarWidget(
              preferredSizeHeight: dynamicSize.height / 15,
              leftWidget: Text(
                style: Theme.of(context).textTheme.labelMedium,
                TextConstants.cardTitleText,
              ),
              rightWidgetList: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconConstants.cardTopRightStartIcon,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: PaddingConstants.largeHorizontalPadding,
                  child: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconConstants.cardTopRightEndIcon,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding: PaddingConstants.largeHorizontalPadding,
              child: Column(
                children: [
                  SizedBox(
                    height: dynamicSize.height / 3.7,
                    width: double.infinity,
                    child: Card(
                      //TODO: Credit Card Design will be update
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: PaddingConstants.xLargePadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text(TextConstants.cardCreditCardTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        height: 0.77,
                                      )),
                            ),
                            const Spacer(),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image(
                                  height: dynamicSize.height / 9,
                                  image: const AssetImage(
                                      TextConstants.cardMasterCardImagePath)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: PaddingConstants.largeTopPadding,
                    child: Wrap(
                      spacing: 25,
                      children: const [
                        CustomIconButtonWithLabelWidget(
                            label: TextConstants.cardStartIconText,
                            icon: IconConstants.cardStartIcon),
                        CustomIconButtonWithLabelWidget(
                            label: TextConstants.cardMiddleIconText,
                            icon: IconConstants.cardMiddleIcon),
                        CustomIconButtonWithLabelWidget(
                            label: TextConstants.cardEndIconText,
                            icon: IconConstants.cardEndIcon),
                      ],
                    ),
                  ),
                  Padding(
                    padding: PaddingConstants.largeVerticalPadding,
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          color: Colors.black,
                          child: Wrap(
                            spacing: 15,
                            runAlignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.center,
                            children: const [
                              Icon(
                                IconConstants.cardElevatedButtonIcon,
                                color: Colors.amber,
                              ),
                              Text(
                                TextConstants.cardElevatedButtonText,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomInformationCardWidget(
                    title: const Text('Active physical card',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    titleMargin: 0,
                    body: 'Expected arrival 1-15 Now',
                    color: const Color(0xfff2ede1),
                    button: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Activate',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    bottomRightWidget: const Icon(Icons.book),
                    isCloseButtonActive: false,
                  )
                ],
              ),
            )));
  }
}
