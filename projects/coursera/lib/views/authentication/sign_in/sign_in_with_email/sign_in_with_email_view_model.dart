import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/provider/sign_in_state.dart';

class SignInWithEmailViewModel {
  static buildTextFormFieldValue(BuildContext context) {
    var textFormFieldValueList = [
      {
        'controller': context.watch<SignInState>().emailController,
        "hintText": 'Email (Required)',
        'onChanged': (value) {
          context
              .read<SignInState>()
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
        'controller': context.watch<SignInState>().passwordController,
        'onChanged': (value) {
          context
              .read<SignInState>()
              .controlControllerLength(value, validateType: 'password');
        },
        "validator": (value) {
          if (value!.length < 6 || value.isEmpty) {
            return 'Password must be at least 6 characters!';
          }
          return null;
        },
        'obscureText': context.watch<SignInState>().obscureText,
        "hintText": 'Password (Required)',
        'hintTextColor': Colors.black38,
        'suffixIcon': IconButton(
          splashRadius: 10,
          onPressed: () {
            context.read<SignInState>().changeObscureTextState();
          },
          icon: context.watch<SignInState>().obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      }
    ];

    return textFormFieldValueList;
  }
}
