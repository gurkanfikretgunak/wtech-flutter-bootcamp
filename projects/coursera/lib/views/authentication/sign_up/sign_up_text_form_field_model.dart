import 'package:coursera/views/authentication/sign_up/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpTextFormFiledModel {
  static buildTextFormFieldValue(BuildContext context) {
    var textFormFieldValueList = [
      {
        'controller': context.watch<SignUpViewModel>().nameController,
        'onChanged': (value) {
          context
              .read<SignUpViewModel>()
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
        'controller': context.watch<SignUpViewModel>().emailController,
        "hintText": 'Email (Required)',
        'onChanged': (value) {
          context
              .read<SignUpViewModel>()
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
        'controller': context.watch<SignUpViewModel>().passwordController,
        'onChanged': (value) {
          context
              .read<SignUpViewModel>()
              .controlControllerLength(value, validateType: 'password');
        },
        "validator": (value) {
          if (value!.length < 6 || value.isEmpty) {
            return 'Password must be at least 6 characters!';
          }
          return null;
        },
        'obscureText': context.watch<SignUpViewModel>().obscureText,
        "hintText": 'Password (Required)',
        'hintTextColor': Colors.black38,
        'suffixIcon': IconButton(
          splashRadius: 10,
          onPressed: () {
            context.read<SignUpViewModel>().changeObscureTextState();
          },
          icon: context.watch<SignUpViewModel>().obscureText
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      }
    ];

    return textFormFieldValueList;
  }
}
