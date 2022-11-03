
import 'package:flutter/material.dart';


class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({
    Key? key,
    required this.fontColor,
  }) : super(key: key);

  final int fontColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.symmetric(horizontal: 18.0)),
        const Text("Don't have account?",style: TextStyle(fontSize: 14,color: Color(0xFF828282))),
        TextButton(
            onPressed: (){}, 
            child: 
                Text(" Create Now!",style: TextStyle(fontWeight: FontWeight.bold,color: Color(fontColor)),) 
            ),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.fontColor,
  }) : super(key: key);

  final int fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Login",
      style: TextStyle(
        
        fontSize: 31,
        color: Color(fontColor),
        fontStyle: FontStyle.normal
      ),                
      );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key? key,
    required this.fontColor,
    required TextEditingController emailcontroller,
  }) : _emailcontroller = emailcontroller, super(key: key);

  final int fontColor;
  final TextEditingController _emailcontroller;

  @override
  Widget build(BuildContext context) {
    return InkWell(  // BU BUTON DEĞİŞTİRİLECEK GİTHUBDA STARLADIM
      child:Container(
        decoration:BoxDecoration( borderRadius: BorderRadius.circular(4),color: Color(fontColor),),
        padding:const EdgeInsets.only(top: 1.0),
        height: 40,
        width: 277,

        child: const Center(child: Text("Log In"),),

        
    ),
    onTap: (){
      //burda textfielddan gelen veriyi tutucaz inş
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
          // Retrieve the text that the user has entered by using the
          // TextEditingController.
          content: Text(_emailcontroller.text),
      );
      },
    );
    },
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required TextEditingController passwordcontroller,
    required this.fontColor,
  }) : _passwordcontroller = passwordcontroller, super(key: key);

  final TextEditingController _passwordcontroller;
  final int fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:12.0,right:12.0,top: 8.0),
      child:   TextField(
        controller: _passwordcontroller,
        keyboardType: TextInputType.emailAddress,
        
        decoration: InputDecoration(
          labelText: "Password",
          suffixIcon: TextButton(onPressed: (){}, child: Text("Forgot?",style: TextStyle(color:Color(fontColor)),),)
        ),
        
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required TextEditingController emailcontroller,
  }) : _emailcontroller = emailcontroller, super(key: key);

  final TextEditingController _emailcontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:12.0,right: 12.0),
      child:   TextField(
        controller: _emailcontroller,
        onChanged: (girilenText) {
          
        },
        keyboardType: TextInputType.emailAddress,
        
        decoration: const InputDecoration(
          labelText: "Email"
        ),
      ),
    );
  }
}

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(20.0)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.withOpacity(0.6),),
            onPressed: (){},//onpressed verilecek
            child: Row(
            children: const[
              Icon(Icons.g_mobiledata),Text("Google")
            ],     
          )
          ),
        const Padding(padding: EdgeInsets.only(right:10.0)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.withOpacity(0.6),),
          onPressed: (){},//onpressed verilecek
          child: Row(
          
          children: const[
            
            Icon(Icons.facebook_rounded),Text("Facebook")
          ],     
        ),
        
        ),
      ],
    );
  }
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
final int pageColor = 0xFFFEFEFE;
final int fontColor = 0xFF02A28F;
late TextEditingController _emailcontroller;
late TextEditingController _passwordcontroller;

