import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trainlineplayground/constants/text_constants/constants.dart';

import '../widgets/account_page_widgets.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  List<Widget> RowList = const [
    MessagesRow(),
    BookingRow(),
    PaymentRow(),
    RailCardsRow(),
    BusinessRow(),
    BusinesBookRow(),
    MoneyRow(),
    AppSettingsRow(),
    PrivacyChoiceRow(),
    PushRow(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const accountContainer(),
            Container(
              height: 500,
              width: double.infinity,
              child: ListView.builder(
                itemCount: RowList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: FunctionalAccounWidget.bottomBorderSideWidget()
                    ),
                    child: RowList[index],
                  );
                },
                ),
            )
          ]),
      bottomNavigationBar: AccountPageBottomNavBar(),
    );
  }
  
}


