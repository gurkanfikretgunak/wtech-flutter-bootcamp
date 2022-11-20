import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/sign_up_state.dart';

class SignUpViewModel {
  static buildTextFormFieldValue(BuildContext context) {
    var textFormFieldValueList = [
      {
        'controller': context.watch<SignUpState>().nameController,
        'onChanged': (value) {
          context
              .read<SignUpState>()
              .controlControllerLength(value, validateType: 'name');
        },
        "hintText": 'Full nasssme (Required)',
        "validator": (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a valid name!';
          }
          return null;
        },
      },
      {
        'controller': context.watch<SignUpState>().emailController,
        "hintText": 'Email (Required)',
        'onChanged': (value) {
          context
              .read<SignUpState>()
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
        'controller': context.watch<SignUpState>().passwordController,
        'onChanged': (value) {
          context
              .read<SignUpState>()
              .controlControllerLength(value, validateType: 'password');
        },
        "validator": (value) {
          if (value!.length < 6 || value.isEmpty) {
            return 'Password must be at least 6 characters!';
          }
          return null;
        },
        'obscureText': context.watch<SignUpState>().obscureText,
        "hintText": 'Password (Required)',
        'hintTextColor': Colors.black38,
        'suffixIcon': IconButton(
          splashRadius: 10,
          onPressed: () {
            context.read<SignUpState>().changeObscureTextState();
          },
          icon: context.watch<SignUpState>().obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      }
    ];
    return textFormFieldValueList;
  }
}
