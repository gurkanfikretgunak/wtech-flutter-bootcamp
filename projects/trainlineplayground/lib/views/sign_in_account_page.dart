
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trainlineplayground/widgets/orjin_homepage_widgets.dart';

class SignInAccountPage extends StatefulWidget {
  const SignInAccountPage({super.key});

  @override
  State<SignInAccountPage> createState() => SignInAccountPageState();
}

class SignInAccountPageState extends State<SignInAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        
        children: [
          Container(
            color: Colors.blueGrey[100],
             alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 50)),
              const Text("Sign in to your Account",style: TextStyle(fontSize: 24),),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text("Manage, change and refund your bookings effortlesly",),
              const Padding(padding: EdgeInsets.only(top: 20)),
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
              const Padding(padding: EdgeInsets.only(top: 20)),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 350,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: const Text("Continue with Google",style: TextStyle(color: Colors.black,fontSize: 20),)
                  
                ),
                onTap: () {
                  
                },
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
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
                      child: const Text("Apple"),
                    ),
                    onTap: () {
                      
                    },
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New Customer?"),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed('/createAccountpage');
                  },
                   child:const Text("Create an account",style: TextStyle(color: Colors.purple),))
                ],
              )
            ],
            ),
          ),
          Container(
            height: 65,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.mail_outline_outlined),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                     Text("Messages",style: TextStyle(fontSize: 18)),
                     Text("You have no new messages",style: TextStyle(fontSize: 16),)
                  ],
                )
              ],
            ),
          ),
          
          Container(
            height: 65,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.mail_outline_outlined),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                     Text("Booking preferences",style: TextStyle(fontSize: 21)),
                     Text("Railcards",style: TextStyle(fontSize: 16),)
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.mail_outline_outlined),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                     Text("Trainline Business",style: TextStyle(fontSize: 21)),
                     Text("Business bookings",style: TextStyle(fontSize: 16),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
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
      )
    );
  }
}   

//ROUTES EKLE
//PROVIDER BAĞLA
// SONRAKI SAYFALARDA API BAĞLA