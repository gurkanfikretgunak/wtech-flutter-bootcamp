import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/custom_icon_button_with_label_widget.dart';
import 'package:neo_financial_app/widgets/custom_information_card_widget.dart';

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
                'Card',
              ),
              rightWidgetList: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.help_outline,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: dynamicSize.height / 3.7,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text('neo',
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
                                      'assets/logos/mastercard-logo.png')),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomIconButtonWithLabelWidget(
                          label: 'Freeze', icon: Icons.ac_unit),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CustomIconButtonWithLabelWidget(
                            label: 'View', icon: Icons.visibility),
                      ),
                      CustomIconButtonWithLabelWidget(
                          label: 'Settings', icon: Icons.settings),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
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
                                Icons.card_giftcard,
                                color: Colors.amber,
                              ),
                              Text(
                                'Add to Apple Wallet',
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
