import 'package:flutter/material.dart';
import 'package:samples/views/register_page.dart';

class RegisterHeaderWidget extends StatelessWidget {
  const RegisterHeaderWidget({
    Key? key,
    required this.fontColor,
  }) : super(key: key);

  final int fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign Up",
      style: TextStyle(
        
        fontSize: 31,
        color: Color(fontColor),
        fontStyle: FontStyle.normal
      ),                
      );
  }
}
final int fontColor = 0xFF02A28F;

class RegisterUserNameTextField extends StatelessWidget {
  const RegisterUserNameTextField({
    Key? key,
    required TextEditingController usernamecontroller,
  }) : _usernamecontroller = usernamecontroller, super(key: key);

  final TextEditingController _usernamecontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:12.0,right: 12.0),
      child: TextField(
        controller: _usernamecontroller,
        onChanged: (girilenText) {
          
       },
       decoration: const InputDecoration(
          labelText: "İsim-Soyisim"
        ),
      ),
    );
  }
}
