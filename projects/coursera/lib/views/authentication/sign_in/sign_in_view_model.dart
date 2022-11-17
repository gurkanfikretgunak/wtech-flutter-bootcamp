import 'package:coursera/core/constants/color_constant.dart';
import 'package:coursera/widgets/custom_viewer_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class SignInViewModel {
  static buildButtonValue(BuildContext context) {
    var buttonValueList = [
      {
        'borderSideColor': ColorConstant.instance.appBlack,
        'primary': ColorConstant.instance.appWhite,
        'textColor': ColorConstant.instance.appBlack,
        'iconWidget': Icon(
          Icons.apple,
          size: context.mediumValue,
        ),
        'text': "Continue with Apple",
        'onPressed': () {},
      },
      {
        "borderSideColor": ColorConstant.instance.appGreyDark,
        "primary": ColorConstant.instance.appWhite,
        "textColor": ColorConstant.instance.appGreyDark,
        "iconWidget": CustomImageViewer(
          fit: BoxFit.contain,
          assetPath: "assets/icons/google.png",
          height: context.mediumValue,
        ),
        "text": "Continue with Google",
        "onPressed": () {},
      },
      {
        "borderSideColor": ColorConstant.instance.facebookLogoColor,
        "primary": ColorConstant.instance.appWhite,
        "textColor": ColorConstant.instance.facebookLogoColor,
        "iconWidget": Icon(
          size: context.mediumValue,
          FontAwesomeIcons.facebook,
          color: ColorConstant.instance.facebookLogoColor,
        ),
        "text": "Continue with Google",
        "onPressed": () {},
      },
    ];

    return buttonValueList;
  }
}
