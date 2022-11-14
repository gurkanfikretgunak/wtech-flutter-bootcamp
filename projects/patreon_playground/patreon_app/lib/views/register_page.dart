import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/customTextButton.dart';
import '../widgets/customTextFormField.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final ValueNotifier<bool> isButtonActive = ValueNotifier(false);
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    nameController.addListener(() {
      if (nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
    emailController.addListener(() {
      if (nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
    passwordController.addListener(() {
      if (nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
    confirmPasswordController.addListener(() {
      if (nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty) {
        isButtonActive.value = true;
      } else {
        isButtonActive.value = false;
      }
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.blueGrey[300])),
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          CustomTextField(
            textLabel: "Name",
            obscure: false,
            controller: nameController,
            otoFocus: true,
          ),
          CustomTextField(
            textLabel: "Email",
            obscure: false,
            controller: emailController,
            otoFocus: false,
          ),
          CustomTextField(
            textLabel: "Password",
            obscure: true,
            controller: passwordController,
            otoFocus: false,
          ),
          CustomTextField(
            textLabel: "Confirm Password",
            obscure: true,
            controller: confirmPasswordController,
            otoFocus: false,
          ),
          ValueListenableBuilder<bool>(
            valueListenable: isButtonActive,
            builder: (context, value, child) {
              return CustomTextButton(
                text: "Sign Up",
                buttonColor: Colors.red,
                onPress: value ? () {} : null,
                disabledColor: Colors.red.shade200,
              );
            },
          )
        ],
      ),
    );
  }
}
