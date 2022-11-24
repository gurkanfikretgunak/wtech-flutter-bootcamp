import '../../../core/components/custom_scaffold.dart';

import '../../../core/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/button/button_libary.dart';
import '../../../core/components/text/text_libary.dart';

class LearnView extends StatefulWidget {
  const LearnView({super.key});

  @override
  State<LearnView> createState() => _LearnViewState();
}

class _LearnViewState extends State<LearnView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar.customAppBar(
        context: context,
        leading: CustomTextButton(
          onPressed: () {},
          text: "Switch Catalog",
        ),
        isTrailing: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Learn",
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          context.emptySizedHeightBoxNormal,
          const Center(
            child: Image(
              image: AssetImage("assets/learn_page_image_1.png"),
            ),
          ),
          const CustomText(
            text: "You haven't enrolled in anycourses (yet)",
            maxLines: 3,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          const CustomText(
            text: "Start by enrolling in a course and learn something new.",
            maxLines: 3,
            textAlign: TextAlign.center,
            fontSize: 20,
          ),
          context.emptySizedHeightBoxNormal,
          CustomElevatedButton(
            onPressed: () {},
            text: "Explore courses",
          ),
          context.emptySizedHeightBoxNormal,
        ],
      ),
    );
  }
}
