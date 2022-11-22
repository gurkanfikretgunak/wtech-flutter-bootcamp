import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/constants/constant_libary.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: context.dynamicHeight(0.05),
        width: context.dynamicWidth(0.1),
        child: CircularProgressIndicator(color: ColorConstant.instance.appBlue),
      ),
    );
  }
}
