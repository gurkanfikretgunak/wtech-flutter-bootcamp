import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/core/widget/button/general_button.dart';
import 'package:robinhood_playground/product/navigator/navigator_routes.dart';
import 'package:robinhood_playground/product/user/get_all_user.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
        body: SingleChildScrollView(
          child: Padding(
            padding: GeneralPadding().generalHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset(
                    'assets/splash.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                    controller: _emailController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    autofillHints: const [AutofillHints.email],
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(hintText: 'E-mail'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: _passwordController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.visiblePassword,
                    autofocus: false,
                    autofillHints: const [AutofillHints.email],
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(hintText: 'Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GenerealButton(
                    text: 'Log In',
                    backgroundColor: GeneralButtonColor.green.getColor(),
                    onPressed: () {
                      var email = _emailController.text;
                      var password = _passwordController.text;
                      bool login = GetAllUser.isLogin(email, password);

                      if (login) {
                        Navigator.of(context)
                            .pushReplacementNamed(NavigateRoutes.homepage.name);
                        debugPrint('Giirş başarılı');
                      } else {
                        debugPrint('Hatalı');
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Forgot your e-mail or password ?',
                    style: TextStyle(
                        color: GeneralButtonColor.green.getColor(),
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
