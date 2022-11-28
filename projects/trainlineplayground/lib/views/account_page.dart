import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/account_page_widgets.dart';



class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const accountContainer(),
        Container(
          height: 70,
          decoration:  BoxDecoration(
            border: _bottomBorderSideWidget()
          ),
          child: const MessagesRow(),
        ),
        const BookingRow(),
        
        Container(
          decoration: BoxDecoration(
            border: _bottomBorderSideWidget()
          ),
          height: 50,
          width: double.infinity,
          child: const PaymentRow(),
        ),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: _bottomBorderSideWidget()
          ),
          child: const RailCardsRow(),
        ),
        const BusinessRow(),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: _bottomBorderSideWidget()
          ),
          child: const BusinesBookRow(),
        ),
        const AppSettingsRow(),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: _bottomBorderSideWidget()
          ),
          child: const MoneyRow(),
        ),
        Container(
           height: 50,
           width: double.infinity,
           decoration: BoxDecoration(
            border: _bottomBorderSideWidget()
          ),
           child: const PrivacyChoiceRow(),
        ),
        Container(
           height: 50,
           width: double.infinity,
           child: const PushRow(),
        ),

      ]),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.airplane_ticket_outlined)),
            label: 'My Tickets'),
        BottomNavigationBarItem(
            icon: IconButton(onPressed: () {
              Navigator.of(context).pushNamed('/');  
              
            },
             icon: const Icon(Icons.person)),
            label: 'Sign In'),
      ]),
    );
    
  }

  Border _bottomBorderSideWidget() {
    return  Border(bottom: BorderSide(
            color: Colors.blue.shade100,
            width: 1.0
          ));
  }
}

