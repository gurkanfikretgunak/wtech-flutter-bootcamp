import 'package:flutter/material.dart';
import 'package:robinhood_playground/product/user/get_all_user.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ElevatedButton(
        child: const Text('tIKLA'),
        onPressed: ()  {
          var sonuc =
               GetAllUser.isLogin('fatih@hotmail.com', '12345678');
          debugPrint(sonuc.toString());
        },
      ),
    );
  }
}
