import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/sign_up_state.dart';

class SignUpViewModel {
  static buildTextFormFieldValue(BuildContext context) {
    final validationService = Provider.of<SignUpState>(context);

    var textFormFieldValueList = [
      {
        "hintText": 'Full name (Required)',
        "suffixIcon": null,
        "errorText": validationService.firstName.error,
        "onChanged": (String value) {
          validationService.nameValidation(value);
        },
      },
      {
        "hintText": 'Email (Required)',
        "suffixIcon": null,
        "errorText": validationService.email.error,
        "onChanged": (String value) {
          validationService.emailValidation(value);
        },
      },
      {
        "hintText": 'Password (Required)',
        "suffixIcon": FontAwesomeIcons.eyeSlash,
        "errorText": validationService.password.error,
        "onChanged": (String value) {
          validationService.passwordValidation(value);
        },
      }
    ];
    return textFormFieldValueList;
  }
}
