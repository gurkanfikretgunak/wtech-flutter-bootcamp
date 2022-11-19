import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wise_app/unit/login_constants/login_text_constants.dart';
import '../core/provider/provider_theme.dart';
import '../widgets/login/login_body.dart';
import '../widgets/login/login_bottom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textEditingControllerPassword =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: provider.appBarColor,
          elevation: 0,
          iconTheme: provider.appBarButtonColor,
          actions: [
            SizedBox(
              width: 120,
              child: TextButton(
                onPressed: () {
                  provider.changeTheme();
                },
                child: const Text(LoginTextConstants.changeTheme),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LoginPageBody(
                    size: size,
                    providerTheme: provider),
                const SizedBox(
                  height: 100,
                ),
                LoginPageBottomButton(provider: provider, size: size)
              ],
            ),
          ),
        ));
  }
}
