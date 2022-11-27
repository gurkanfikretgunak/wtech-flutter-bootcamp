import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../authentication_view_model.dart';
import 'sign_in_with_email_view_model.dart';

class SignInTextFormFieldModel {
  buildTextFormFieldValue(BuildContext context) {
    var provider = context.watch<SignInWithEmailViewModel>();
    var textFormFieldValueList = [
      {
        'controller': provider.emailController,
        'keyboardType': TextInputType.emailAddress,
        "hintText": 'Email (Required)',
        'onChanged': (value) {
          context
              .read<SignInWithEmailViewModel>()
              .controlControllerLength(value, validateType: 'email');
        },
        "validator": AuthenticationViewModel().emailValidator,
      },
      {
        'controller': provider.passwordController,
        'keyboardType': TextInputType.visiblePassword,
        'onChanged': (value) {
          context
              .read<SignInWithEmailViewModel>()
              .controlControllerLength(value, validateType: 'password');
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
}
