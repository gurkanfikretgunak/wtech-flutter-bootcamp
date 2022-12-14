import 'package:coursera/core/constants/color_constant.dart';
import 'package:coursera/views/bottom_nav_bar/profile/widgets/settings_card.dart';
import 'widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/components/custom_card.dart';
import '../../../core/components/custom_scaffold.dart';
import '../../../core/components/text/text_libary.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isDrawer: true,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Profile",
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          context.emptySizedHeightBoxNormal,
          Stack(
            children: [
              Transform(
                transform:
                    Matrix4.translationValues(0, context.dynamicHeight(0.1), 0),
                child: const CustomCard(
                  child: SettingsCard(),
                ),
              ),
              const ProfileImage(),
            ],
          ),
        ],
      ),
    );
  }
}
