import 'package:flutter/material.dart';

import '../widgets/login_page_widgets.dart';


class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => LoginRegisterPageState();
}

class LoginRegisterPageState extends State<LoginRegisterPage> {
  final int pageColor = 0xFFFEFEFE;
  final int fontColor = 0xFF02A28F;
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;

  

  @override
  void initState() { //oluştur
    super.initState();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
  }
  @override
  void dispose() {  //yok et
    _passwordcontroller.dispose();
    _emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return mainContainer();
  }

  Container mainContainer() {
    return Container(
    
    constraints: const BoxConstraints.expand(),
    decoration:  const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("lib/assets/images/backgroundImage.png"),fit: BoxFit.cover,
        opacity: 0.9,
      )
    ),
    child:  Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          
          height: 400,
          width: 300,
          
          decoration:  myBoxDecoration(),
          child: Column(
            children:  [
              const Padding(padding: EdgeInsets.only(top: 8.0)),
              HeaderWidget(fontColor: fontColor),
              EmailTextField(emailcontroller: _emailcontroller),
              PasswordTextField(passwordcontroller: _passwordcontroller, fontColor: fontColor),
              const Divider(),
              LogInButton(fontColor: fontColor, emailcontroller: _emailcontroller),
              CreateAccountWidget(fontColor: fontColor),
              const Center(child: Text("or Continue with")),
              const Divider(),
              
              
              const BottomButtonWidget()
            ],
          ),

        ),
      )

    ),
  );
  }

BoxDecoration myBoxDecoration() {
    return BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(pageColor),
            boxShadow:  [
              BoxShadow(
                color: Colors.black.withOpacity(0.63),
                blurRadius: 8,
                offset: const Offset(0,4)
              )
            ]
          );
  }
}










