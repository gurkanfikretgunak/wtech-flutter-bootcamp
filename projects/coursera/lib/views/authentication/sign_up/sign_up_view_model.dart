import 'package:flutter/material.dart';

class SignUpViewModel with ChangeNotifier {
  bool _obscureText = true;
  bool get obscureText => _obscureText;

  changeObscureTextState() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isFormValidateName = false;
  bool get isFormValidateName => _isFormValidateName;

  bool _isFormValidateEmail = false;
  bool get isFormValidateEmail => _isFormValidateEmail;

  bool _isFormValidatePassword = false;
  bool get isFormValidatePassword => _isFormValidatePassword;

  controlControllerLength(value, {required String validateType}) {
    switch (validateType) {
      case 'name':
        _isFormValidateName = control(value);
        notifyListeners();
        break;
      case 'email':
        _isFormValidateEmail = control(value);
        notifyListeners();
        break;
      case 'password':
        _isFormValidatePassword = control(value);
        notifyListeners();
        break;
      default:
    }
  }

  control(value) {
    return (value.length > 0) ? true : false;
  }

  // static buildTextFormFieldValue(BuildContext context) {
  //   var textFormFieldValueList = [
  //     {
  //       'controller': context.watch<SignUpState>().nameController,
  //       'onChanged': (value) {
  //         context
  //             .read<SignUpState>()
  //             .controlControllerLength(value, validateType: 'name');
  //       },
  //       "hintText": 'Full nasssme (Required)',
  //       "validator": (value) {
  //         if (value == null || value.isEmpty) {
  //           return 'Please enter a valid name!';
  //         }
  //         return null;
  //       },
  //     },
  //     {
  //       'controller': context.watch<SignUpState>().emailController,
  //       "hintText": 'Email (Required)',
  //       'onChanged': (value) {
  //         context
  //             .read<SignUpState>()
  //             .controlControllerLength(value, validateType: 'email');
  //       },
  //       "validator": (value) {
  //         if (value == null || value.isEmpty) {
  //           return 'Please enter a valid email!';
  //         }
  //         return null;
  //       },
  //     },
  //     {
  //       'controller': context.watch<SignUpState>().passwordController,
  //       'onChanged': (value) {
  //         context
  //             .read<SignUpState>()
  //             .controlControllerLength(value, validateType: 'password');
  //       },
  //       "validator": (value) {
  //         if (value!.length < 6 || value.isEmpty) {
  //           return 'Password must be at least 6 characters!';
  //         }
  //         return null;
  //       },
  //       'obscureText': context.watch<SignUpState>().obscureText,
  //       "hintText": 'Password (Required)',
  //       'hintTextColor': Colors.black38,
  //       'suffixIcon': IconButton(
  //         splashRadius: 10,
  //         onPressed: () {
  //           context.read<SignUpState>().changeObscureTextState();
  //         },
  //         icon: context.watch<SignUpState>().obscureText
  //             ? const Icon(Icons.visibility_off)
  //             : const Icon(Icons.visibility),
  //       ),
  //     }
  //   ];

  //   return textFormFieldValueList;
  // }

}
