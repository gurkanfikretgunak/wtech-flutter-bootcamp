import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/custom_viewer_image.dart';
import '../../../../core/constants/constant_libary.dart';

class SignInWithOrganizationViewModel {
  static buildButtonValue(BuildContext context) {
    List buttonValueList = [
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
        "borderSideColor": ColorConstant.instance.appGrey3,
        "primary": ColorConstant.instance.appWhite,
        "textColor": ColorConstant.instance.appGrey3,
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
