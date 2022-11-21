import 'package:coursera/views/authentication/sign_in/sign_in_with_email/sign_in_with_email_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInTextFormFieldModel {
  static buildTextFormFieldValue(BuildContext context) {
    var textFormFieldValueList = [
      {
        'controller': context.watch<SignInWithEmailViewModel>().emailController,
        "hintText": 'Email (Required)',
        'onChanged': (value) {
          context
              .read<SignInWithEmailViewModel>()
              .controlControllerLength(value, validateType: 'email');
        },
        "validator": (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a valid email!';
          }
          return null;
        },
      },
      {
        'controller':
            context.watch<SignInWithEmailViewModel>().passwordController,
        'onChanged': (value) {
          context
              .read<SignInWithEmailViewModel>()
              .controlControllerLength(value, validateType: 'password');
        },
        "validator": (value) {
          if (value!.length < 6 || value.isEmpty) {
            return 'Password must be at least 6 characters!';
          }
          return null;
        },
        'obscureText': context.watch<SignInWithEmailViewModel>().obscureText,
        "hintText": 'Password (Required)',
        'hintTextColor': Colors.black38,
        'suffixIcon': IconButton(
          splashRadius: 10,
          onPressed: () {
            context.read<SignInWithEmailViewModel>().changeObscureTextState();
          },
          icon: context.watch<SignInWithEmailViewModel>().obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      }
    ];

    return textFormFieldValueList;
  }
}
