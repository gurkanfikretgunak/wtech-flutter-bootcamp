import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/theme/provider_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: provider.appBarColor,
        elevation: 0,
        iconTheme: provider.appBarButtonColor,
        actions: [
          SizedBox(
            width: 100,
            child: TextButton(
              onPressed: (){
                provider.changeTheme();
              },
              child: Text("Tema Değiş"),
            ),
          ),
        ],
      ),
      body:Column(
        children: [
            
        ],
      )
    );
  }
}
