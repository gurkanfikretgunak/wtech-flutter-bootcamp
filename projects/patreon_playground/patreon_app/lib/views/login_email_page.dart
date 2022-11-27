import 'package:flutter/material.dart';
import 'package:patreon_app/core/provider/loginProvider.dart';
import 'package:patreon_app/core/provider/registerProvider.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';
import 'package:provider/provider.dart';
import '../widgets/customTextButton.dart';
import '../widgets/customTextFormField.dart';

class LoginwithEmail extends StatefulWidget {
  const LoginwithEmail({super.key});

  @override
  State<LoginwithEmail> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<LoginwithEmail> {
  final ValueNotifier<bool> isButtonActive = ValueNotifier(false);
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    emailController.addListener(() {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
    passwordController.addListener(() {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    LoginProvider provider = Provider.of<LoginProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.blueGrey[300])),
        title: Text(
          "Log In",
          style: CustomTheme.customThemeData().textTheme.labelMedium,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: Column(
                children: [
                  CustomTextField(
                    textLabel: "Email",
                    obscure: false,
                    controller: emailController,
                    otoFocus: true,
                    onCha: (p0) {
                      context
                          .read<RegisterProvider>()
                          .validateEmail(emailController.text);
                    },
                  ),
                  CustomTextField(
                    textLabel: "Password",
                    obscure: true,
                    controller: passwordController,
                    otoFocus: false,
                    onCha: (p0) {
                      context
                          .read<RegisterProvider>()
                          .validatePassword(passwordController.text);
                    },
                  ),
                  Expanded(
                    flex: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "FORGOT?",
                              style: CustomTheme.customThemeData()
                                  .textTheme
                                  .labelSmall,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isButtonActive,
              builder: (context, value, child) {
                return Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      CustomTextButton(
                        text: "Log In",
                        buttonColor: Colors.red,
                        onPress: value
                            ? () {
                                provider.signInEmailAndPassword(
                                  context,
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                                //Navigator.pushNamed(context, '/navigate');
                              }
                            : null,
                        disabledColor: Colors.red.shade200,
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
