import 'package:flutter/material.dart';
import 'package:patreon_app/views/login_email_page.dart';
import 'package:patreon_app/views/register_page.dart';
import '../widgets/customLinkButton.dart';
import '../widgets/customTextButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Image.network(
                  "https://logos-world.net/wp-content/uploads/2020/12/Patreon-Emblem.png"),
            ),
            CustomTextButton(
              text: "Continue with Google",
              buttonColor: Colors.blueGrey,
              onPress: () {},
              disabledColor: Colors.blueGrey,
            ),
            CustomTextButton(
              text: "Continue with Facebook",
              buttonColor: Colors.blue,
              onPress: () {},
              disabledColor: Colors.blueGrey,
            ),
            CustomTextButton(
              text: "Log in with Email",
              buttonColor: Colors.red.shade400,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginwithEmail()),
                );
              },
              disabledColor: Colors.blueGrey,
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New to Patreon?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text:
                      "By clicking Sign Up for Patreon,Continue with Google,or Continue with Facebook,you agree to Patreon's ",
                  style: TextStyle(color: Colors.black),
                  children: <InlineSpan>[
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: LinkButton(
                          urlLabel: "Terms of Use,",
                          url: "https://www.patreon.com/policy/legal"),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: LinkButton(
                          urlLabel: " Privacy Policy",
                          url: "https://privacy.patreon.com/"),
                    ),
                    TextSpan(
                      text: ',and ',
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: LinkButton(
                          urlLabel: "Cookie Policy.",
                          url: "https://www.patreon.com/policy/cookies"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
