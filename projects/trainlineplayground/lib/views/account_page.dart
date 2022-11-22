import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
            color: Colors.purple
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const[
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text("Account",style:TextStyle(fontSize: 20,color: Colors.white)),
                ],
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const[
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text("buraya user email gelecek apiden!",style: TextStyle(color: Colors.white),),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 70,
          decoration: const BoxDecoration(),
          child: Row(
            
            children: [
              const Padding(padding: EdgeInsets.only(left: 15)),
              const Icon(Icons.local_post_office_outlined),
              const Padding(padding: EdgeInsets.only(left: 30)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Text("Messages",style:TextStyle(fontSize: 17),),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  Text("You have no new messages")
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            Padding(padding: EdgeInsets.only(left: 15)),
             Text("Booking preferences",style: TextStyle(fontSize: 22),),
          ],
        ),
        Container(
          height: 50,
          width: double.infinity,
          child: Row(children:const [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.credit_card),
            Padding(padding: EdgeInsets.only(left: 15)),
            Text("Payment Methods"),
            
          ]),
        ),
        Container(
          height: 50,
          width: double.infinity,
          child: Row(children:const [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.chrome_reader_mode_outlined),
            Padding(padding: EdgeInsets.only(left: 15)),
            Text("Railcards"),
            
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            Padding(padding: EdgeInsets.only(left: 15)),
             Text("Trainline Business",style: TextStyle(fontSize: 22),),
          ],
        ),
        Container(
          height: 50,
          width: double.infinity,
          child: Row(children:const [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.business_center),
            Padding(padding: EdgeInsets.only(left: 15)),
            Text("Business bookings"),
            
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            Padding(padding: EdgeInsets.only(left: 15)),
             Text("App Settings",style: TextStyle(fontSize: 22),),
          ],
        ),
        Container(
          height: 50,
          width: double.infinity,
          child: Row(children: [
            const Padding(padding: EdgeInsets.only(left: 15)),
            const Icon(Icons.attach_money_rounded),
            const Padding(padding: EdgeInsets.only(left: 15)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                 Text("Currency"),
                 Text("Ş / USD")
              ],
            ),
          
            
          ]),
        ),
        Container(
           height: 50,
           width: double.infinity,
           child: Row(children:const [
             Padding(padding: EdgeInsets.only(left: 15)),
              Icon(Icons.lock),
              Padding(padding: EdgeInsets.only(left: 15)),
              Text("Your privacy choices"),
            
            ]),
        ),
        Container(
           height: 50,
           width: double.infinity,
           child: Row(children:const [
             Padding(padding: EdgeInsets.only(left: 15)),
              Icon(Icons.notifications),
              Padding(padding: EdgeInsets.only(left: 15)),
              Text("Push notifications"),
            
            ]),
        ),

      ]),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
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
}
