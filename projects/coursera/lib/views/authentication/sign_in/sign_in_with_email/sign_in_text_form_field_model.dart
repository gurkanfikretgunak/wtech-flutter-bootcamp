import 'package:flutter/material.dart';

import '../../authentication_view_model.dart';
import 'sign_in_with_email_view_model.dart';

class SignInTextFormFieldModel {
  buildTextFormFieldValue(BuildContext context) {
    var provider = SignInWithEmailViewModel().of(context);
    var textFormFieldValueList = [
      {
        'controller': provider.emailController,
        'keyboardType': TextInputType.emailAddress,
        "hintText": 'Email (Required)',
        'onChanged': (value) {
          provider.controlControllerLength(value, validateType: 'email');
        },
        "validator": AuthenticationViewModel().emailValidator,
      },
      {
        'controller': provider.passwordController,
        'keyboardType': TextInputType.visiblePassword,
        'onChanged': (value) {
          provider.controlControllerLength(value, validateType: 'password');
        },
        "validator": AuthenticationViewModel().passwordValidator,
        'obscureText': provider.obscureText,
        "hintText": 'Password (Required)',
        'hintTextColor': Colors.black38,
        'suffixIcon': obscureTextIcon(context),
      }
    ];

    return textFormFieldValueList;
  }

  IconButton obscureTextIcon(BuildContext context) {
    var provider = SignInWithEmailViewModel().of(context);

    return IconButton(
      splashRadius: 10,
      onPressed: () {
        provider.changeObscureTextState();
      },
      icon: provider.obscureText
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
    );
  }
}
