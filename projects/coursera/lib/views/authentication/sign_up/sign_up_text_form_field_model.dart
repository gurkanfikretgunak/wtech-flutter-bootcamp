import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'sign_up_view_model.dart';

class SignUpTextFormFiledModel {
  buildTextFormFieldValue(BuildContext context) {
    final providerFL = Provider.of<SignUpViewModel>(context, listen: false);
    final provider = Provider.of<SignUpViewModel>(context);

    var textFormFieldValueList = [
      {
        'controller': provider.nameController,
        "hintText": 'Full nasssme (Required)',
        "validator": nameValidator,
        'onChanged': (value) {
          providerFL.controlControllerLength(value, validateType: 'name');
        },
      },
      {
        'controller': provider.emailController,
        "hintText": 'Email (Required)',
        "validator": emailValidator,
        'onChanged': (value) {
          providerFL.controlControllerLength(value, validateType: 'email');
        },
      },
      {
        'controller': provider.passwordController,
        "validator": passwordValidator,
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
    return IconButton(
      splashRadius: 10,
      onPressed: () {
        context.read<SignUpViewModel>().changeObscureTextState();
      },
      icon: context.watch<SignUpViewModel>().obscureText
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
    );
  }

  String? nameValidator(String? value) {
    if (value!.length < 2 ||
        value.contains(RegExp(r'[0-9]')) ||
        value.isEmpty) {
      return 'Please enter a valid name!';
    }
    return null;
  }

  String? emailValidator(value) {
    if (value!.length < 2 ||
        !value.contains(RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')) ||
        value.isEmpty) {
      return 'Please enter a valid email!';
    }
    return null;
  }

  String? passwordValidator(value) {
    if (value!.length < 6 || value.isEmpty) {
      return 'Password must be at least 6 characters!';
    }
    return null;
  }
}
