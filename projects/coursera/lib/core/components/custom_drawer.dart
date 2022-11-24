import 'package:coursera/core/components/custom_divider.dart';
import 'package:coursera/core/components/custom_viewer_image.dart';
import 'package:coursera/core/components/text/text_libary.dart';
import 'package:coursera/core/constants/constant_libary.dart';
import 'package:coursera/core/init/cache/shared_manager.dart';
import 'package:coursera/core/init/routes/custom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../data/enum/shared_prefence_keys.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.instance.appGreyLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: context.dynamicHeight(0.15),
            width: context.dynamicHeight(0.15),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(context.dynamicHeight(1)),
                child: const CustomImageViewer(
                  url:
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                )),
          ),
          context.emptySizedHeightBoxLow,
          context.emptySizedHeightBoxLow,
          const CustomText(
            text: 'Elif Karagöz',
            fontSize: 23,
          ),
          context.emptySizedHeightBoxLow,
          context.emptySizedHeightBoxHigh,
          context.emptySizedHeightBoxHigh,
          const CustomDivider(),
          _buildTextButton(
            context,
            icon: Icons.settings_outlined,
            text: "Settings",
          ),
          _buildTextButton(
            context,
            icon: Icons.logout_outlined,
            text: "Logout",
            onPressed: () {
              StorageUtil.removeKey(SharedKeys.isLogin);
              CustomNavigator.goToScreen(context, '/SignInView');
            },
          ),
        ],
      ),
    );
  }

  TextButton _buildTextButton(
    BuildContext context, {
    required IconData icon,
    required String text,
    VoidCallback? onPressed,
  }) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: Padding(
        padding: context.horizontalPaddingMedium,
        child: SizedBox(
          height: context.dynamicHeight(0.05),
          child: Row(
            children: [
              Icon(
                icon,
                color: ColorConstant.instance.appGreyDark,
              ),
              SizedBox(width: context.dynamicWidth(0.04)),
              CustomText(
                color: ColorConstant.instance.appGreyDark,
                text: text,
                fontSize: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
