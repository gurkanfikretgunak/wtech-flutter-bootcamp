import 'package:coursera/widgets/button/custom_button_elevated.dart';
import 'package:coursera/widgets/button/custom_button_icon.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(
          context: context,
          leading: const SizedBox(),
          trailing: CustomIconButton(
            onPressed: () {},
            icon: Icons.settings_outlined,
            iconSize: 22,
          ),
        ),
        body: Padding(
          padding: context.horizontalPaddingMedium,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Profile",
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              Wrap(
                direction: Axis.vertical,
                spacing: 8,
                children: const [
                  CustomText(
                    text: "Elif Karagöz",
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    text: "eliffkaragoz00@gmail.com",
                    fontSize: 16,
                  ),
                ],
              ),
              const Center(
                child: Image(
                  image: AssetImage("assets/profil_page_image_1.png"),
                ),
              ),
              const CustomText(
                text: "That feeling of completion is just around the corner",
                maxLines: 3,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const CustomText(
                text: "Make some progress to get closer to your goal.",
                maxLines: 3,
                textAlign: TextAlign.center,
                fontSize: 20,
              ),
              CustomElevatedButton(
                onPressed: () {},
                text: "Continue Learning",
              ),
              context.emptySizedHeightBoxNormal,
            ],
          ),
        ),
      ),
    );
  }
}
