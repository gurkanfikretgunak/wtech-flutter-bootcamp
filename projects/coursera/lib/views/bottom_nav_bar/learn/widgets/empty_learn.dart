import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/button/button_libary.dart';
import '../../../../core/components/text/text_libary.dart';
import '../../bottom_nav_bar_view_model.dart';

class EmptyLearnView extends StatelessWidget {
  const EmptyLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        CustomElevatedButton(
          onPressed: () {
            BottomNavBarViewModel().of(context, listen: false).changePage(0);
          },
          text: "Explore courses",
        ),
        context.emptySizedHeightBoxHigh,
      ],
    );
  }
}
