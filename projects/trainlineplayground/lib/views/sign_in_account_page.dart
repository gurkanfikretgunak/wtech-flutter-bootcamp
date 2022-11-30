import 'package:flutter/material.dart';
import '../widgets/signin_page_widgets.dart';

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
        
        children:const [
          SignInEmailButton(),
          MessageContainer(),
          
          BookingContainer(),
          BusinessContainer(),
        ],
      ),
      bottomNavigationBar: const SignBottomAppBar()
    );
  }
}




//ROUTES EKLE
//PROVIDER BAĞLA
// SONRAKI SAYFALARDA API BAĞLA