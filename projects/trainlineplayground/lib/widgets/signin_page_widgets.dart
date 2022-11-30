
import 'package:flutter/material.dart';

import '../constants/paddings/signIn_page_paddings.dart';
import '../constants/text_constants/constants.dart';

class SignBottomAppBar extends StatelessWidget {
  const SignBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          label: 'Search'),
      BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/");
              },
              icon: const Icon(Icons.airplane_ticket_outlined)),
          label: 'My Tickets'),
      BottomNavigationBarItem(
          icon: IconButton(onPressed: () {},
           icon: const Icon(Icons.person)),
          label: 'Sign In'),
    ]
    );
  }
}

class BusinessContainer extends StatelessWidget {
  const BusinessContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.mail_outline_outlined),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
               Text(CustomTextsConstants.business,style: TextStyle(fontSize: 21)),
               Text(CustomTextsConstants.businessbook,style: TextStyle(fontSize: 16),)
            ],
          )
        ],
      ),
    );
  }
}

class BookingContainer extends StatelessWidget {
  const BookingContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.mail_outline_outlined),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
               Text(CustomTextsConstants.bookingPre,style: TextStyle(fontSize: 21)),
               Text(CustomTextsConstants.railcards,style: TextStyle(fontSize: 16),)
            ],
          )
        ],
      ),
    );
  }
}

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.mail_outline_outlined),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
               Text(CustomTextsConstants.message,style: TextStyle(fontSize: 18)),
               Text(CustomTextsConstants.nomessage,style: TextStyle(fontSize: 16),)
            ],
          )
        ],
      ),
    );
  }
}

class SignInEmailButton extends StatelessWidget {
  const SignInEmailButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[100],
       alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TopPadding(),
        const Text(CustomTextsConstants.signAccount,style: TextStyle(fontSize: 24),),
        const MidPadding(),
        const Text(CustomTextsConstants.manageRefund,),
        const MidPadding(),
        InkWell(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 350,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple
            ),
            child: const Text("Sign in with email",style: TextStyle(color: Colors.white,fontSize: 20),)
            
          ),
          onTap: () {
            
          },
        ),
        const MidPadding(),
        InkWell(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 350,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: const Text(CustomTextsConstants.signGoogle,style: TextStyle(color: Colors.black,fontSize: 20),)
            
          ),
          onTap: () {
            
          },
        ),
        const MidPadding(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                height: 40,
                width: 125,
                child: const Text("Facebook"),
              ),
              onTap: () {
                
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white,
                height: 40,
                width: 125,
                child: const Text(CustomTextsConstants.signInApple),
              ),
              onTap: () {
                
              },
            )
          ],
        ),
        const MidPadding(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(CustomTextsConstants.newCustomer),
            TextButton(onPressed: () {
              Navigator.of(context).pushNamed('/createAccountpage');
            },
             child:const Text(CustomTextsConstants.createAccount,style: TextStyle(color: Colors.purple),))
          ],
        )
      ],
      ),
    );
  }
}