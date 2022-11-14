import 'package:flutter/material.dart';
import 'package:todoist_app/core/themes/custom_themes.dart';
import 'package:todoist_app/widgets/custom_elevated_button.dart';
import 'package:todoist_app/widgets/deneme_button.dart';

import '../constants/custom_constants.dart';
import 'login_with_email_view.dart';

class WelcomeToApp extends StatefulWidget {
  const WelcomeToApp({Key? key}) : super(key: key);

  @override
  State<WelcomeToApp> createState() => _WelcomeToAppState();
}

class _WelcomeToAppState extends State<WelcomeToApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(CustomImagePathConstants().appIconPath),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        CustomTextConstants().welcomeText,
                        style: CustomTheme.customThemeData().textTheme.headline1,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Image.asset(
                          CustomImagePathConstants().welcomeIconPath,
                          height: 250,
                        ),
                      ),
                      ElevatedButtonC(
                        buttonIcons: Icons.email_rounded,
                        buttonTexts: CustomTextConstants().buttonTextEmail,
                        buttonColors: Colors.red,
                        widName: const LoginWithEmail(),
                      ),
                      CustomElevatedButton(
                        buttonIcons: Icons.apple_outlined,
                        buttonColors: Colors.black,
                        buttonTexts: CustomTextConstants().buttonTextApple,
                        hasDataWidget: const LoginWithEmail(),
                        nullDataWidget: const LoginWithEmail(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Center(
                                child: Image.asset(
                                  CustomImagePathConstants().googleIconPath,
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  CustomImagePathConstants().facbookIconPath,
                                  width: 20,
                                ))),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, left: 30, right: 30),
                        child: Text(
                          CustomTextConstants().agreeText,
                          style: CustomTheme.customThemeData().textTheme.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
