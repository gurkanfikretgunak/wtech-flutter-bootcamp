import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/constants/text_constants/constants.dart';
import 'package:trainlineplayground/core/data/api/user_client.dart';
import 'package:trainlineplayground/core/data/provider/user_model_sharedpf.dart';

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
  
  
  static final userclient = UserClient(Dio(BaseOptions(contentType: 'application/json')));
  
  @override
  void initState() {
   
    super.initState();
  }
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
