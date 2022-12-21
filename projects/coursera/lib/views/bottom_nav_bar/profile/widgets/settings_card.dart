import '../../../../core/components/button/custom_button_text.dart';
import '../../../../core/components/custom_card.dart';
import '../../../../core/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/text/text_libary.dart';
import '../../../../core/init/routes/custom_navigator.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderSideColor: ColorConstant.instance.appBlue,
      width: context.dynamicWidth(1),
      height: context.dynamicHeight(0.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          context.emptySizedHeightBoxHigh,
          context.emptySizedHeightBoxLow3x,
          const CustomText(
              text: "Uncle Bob", fontSize: 15, fontWeight: FontWeight.w600),
          context.emptySizedHeightBoxLow,
          const CustomText(text: "uncle@gmail.com"),
          context.emptySizedHeightBoxNormal,
          _buildTextButton(
            context,
            icon: Icons.cloud_queue_outlined,
            onPressed: () =>
                CustomNavigator.goToScreen(context, '/ThemeSettingView'),
            text: "Theme",
          ),
          _buildTextButton(
            context,
            icon: Icons.settings_outlined,
            text: "Settings",
          ),
          _buildTextButton(
            context,
            icon: Icons.edit_note_outlined,
            text: "Edit Profile Information",
            onPressed: () {},
          ),
          _buildTextButton(
            context,
            icon: Icons.logout_outlined,
            text: "Logout",
            onPressed: () {
              CustomNavigator.goToScreen(context, '/SignInView');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTextButton(
    BuildContext context, {
    required IconData icon,
    required String text,
    VoidCallback? onPressed,
  }) {
    return CustomTextButton(
      onPressed: onPressed ?? () {},
      text: '',
      child: Center(
        child: Row(
          children: [
            SizedBox(width: context.dynamicWidth(0.15)),
            Icon(
              icon,
              color: ColorConstant.instance.appGrey3,
            ),
            SizedBox(width: context.dynamicWidth(0.05)),
            CustomText(
              color: ColorConstant.instance.appGrey3,
              text: text,
              fontSize: 15,
            )
          ],
        ),
      ),
    );
  }
}
