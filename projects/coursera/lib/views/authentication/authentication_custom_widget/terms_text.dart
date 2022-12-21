import 'package:coursera/core/constants/constant_libary.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingMedium,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(color: Colors.black),
          text: "By signin up to create an account I accept Courseras ",
          children: [
            WidgetSpan(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Terms of Service, Privacy Policy,",
                  style: TextStyle(color: ColorConstant.instance.appBlue),
                ),
              ),
            ),
            const TextSpan(
              text: ' and ',
            ),
            WidgetSpan(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Honor Code",
                  style: TextStyle(color: ColorConstant.instance.appBlue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
