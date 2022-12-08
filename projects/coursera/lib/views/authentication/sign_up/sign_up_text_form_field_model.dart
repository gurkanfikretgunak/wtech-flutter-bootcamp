import '../authentication_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'sign_up_view_model.dart';

class SignUpTextFormFiledModel {
  buildTextFormFieldValue(BuildContext context) {
    final providerFL = SignUpViewModel().of(context, listen: false);
    final provider = SignUpViewModel().of(context);

    var textFormFieldValueList = [
      {
        'controller': provider.nameController,
        "hintText": 'Full name (Required)',
        'keyboardType': TextInputType.name,
        "validator": AuthenticationViewModel().nameValidator,
        'onChanged': (value) {
          providerFL.controlControllerLength(value, validateType: 'name');
        },
      },
      {
        'controller': provider.emailController,
        'keyboardType': TextInputType.emailAddress,
        "hintText": 'Email (Required)',
        "validator": AuthenticationViewModel().emailValidator,
        'onChanged': (value) {
          providerFL.controlControllerLength(value, validateType: 'email');
        },
      },
      {
        'controller': provider.passwordController,
        'keyboardType': TextInputType.visiblePassword,
        "validator": AuthenticationViewModel().passwordValidator,
        'obscureText': provider.obscureText,
        "hintText": 'Password (Required)',
        'hintTextColor': Colors.black38,
        'suffixIcon': obscureTextIcon(context),
        'onChanged': (value) {
          providerFL.controlControllerLength(value, validateType: 'password');
        },
      }
    ];
    return textFormFieldValueList;
  }

  IconButton obscureTextIcon(BuildContext context) {
    final provider = SignUpViewModel().of(context);

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
