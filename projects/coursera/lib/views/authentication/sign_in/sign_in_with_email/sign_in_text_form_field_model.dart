import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'sign_in_with_email_view_model.dart';

class SignInTextFormFieldModel {
  buildTextFormFieldValue(BuildContext context) {
    var textFormFieldValueList = [
      {
        'controller': context.watch<SignInWithEmailViewModel>().emailController,
        "hintText": 'Email (Required)',
        'onChanged': (value) {
          context
              .read<SignInWithEmailViewModel>()
              .controlControllerLength(value, validateType: 'email');
        },
        "validator": nameValidator,
      },
      {
        'controller':
            context.watch<SignInWithEmailViewModel>().passwordController,
        'onChanged': (value) {
          context
              .read<SignInWithEmailViewModel>()
              .controlControllerLength(value, validateType: 'password');
        },
        "validator": passwordValidator,
        'obscureText': context.watch<SignInWithEmailViewModel>().obscureText,
        "hintText": 'Password (Required)',
        'hintTextColor': Colors.black38,
        'suffixIcon': obscureTextIcon(context),
      }
    ];

    return textFormFieldValueList;
  }

  IconButton obscureTextIcon(BuildContext context) {
    return IconButton(
      splashRadius: 10,
      onPressed: () {
        context.read<SignInWithEmailViewModel>().changeObscureTextState();
      },
      icon: context.watch<SignInWithEmailViewModel>().obscureText
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
    );
  }

  String? passwordValidator(value) {
    if (value!.length < 6 || value.isEmpty) {
      return 'Password must be at least 6 characters!';
    }
    return null;
  }

  String? nameValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid email!';
    }
    return null;
  }
}
