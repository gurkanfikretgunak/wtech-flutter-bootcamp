import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/widgets/custom_viewer_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class SignInViewModel {
  Constant constant = Constant.instance;

  static buildButtonValue(BuildContext context) {
    var buttonValueList = [
      {
        'borderSideColor': Constant.instance.appBlack,
        'primary': Constant.instance.appWhite,
        'textColor': Constant.instance.appBlack,
        'iconWidget': Icon(
          Icons.apple,
          size: context.mediumValue,
        ),
        'text': "Continue with Apple",
        'onPressed': () {},
      },
      {
        "borderSideColor": Constant.instance.appGreyDark,
        "primary": Constant.instance.appWhite,
        "textColor": Constant.instance.appGreyDark,
        "iconWidget": CustomImageViewer(
          fit: BoxFit.contain,
          assetPath: "assets/icons/google.png",
          height: context.mediumValue,
        ),
        "text": "Continue with Google",
        "onPressed": () {},
      },
      {
        "borderSideColor": Constant.instance.facebookLogoColor,
        "primary": Constant.instance.appWhite,
        "textColor": Constant.instance.facebookLogoColor,
        "iconWidget": Icon(
          size: context.mediumValue,
          FontAwesomeIcons.facebook,
          color: Constant.instance.facebookLogoColor,
        ),
        "text": "Continue with Google",
        "onPressed": () {},
      },
    ];

    return buttonValueList;
  }
}
