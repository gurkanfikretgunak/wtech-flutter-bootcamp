import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/button/custom_button_icon.dart';
import '../../../../core/components/custom_viewer_image.dart';
import '../../../../core/constants/color_constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Transform(
        transform: Matrix4.translationValues(0, context.dynamicHeight(0), 0),
        child: Stack(
          children: [
            SizedBox(
              height: context.dynamicHeight(0.15),
              width: context.dynamicHeight(0.15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(context.dynamicHeight(1)),
                child: const CustomImageViewer(
                  assetPath: "assets/person2.png",
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 90,
              child: CircleAvatar(
                backgroundColor: ColorConstant.instance.appGrey2,
                child: CustomIconButton(
                  onPressed: () {},
                  icon: Icons.camera_alt_outlined,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
