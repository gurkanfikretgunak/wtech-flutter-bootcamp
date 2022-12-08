import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/custom_chip.dart';
import '../../../core/constants/color_constant.dart';
import '../../../core/constants/radius_constant.dart';
import '../course_detail_view_model.dart';

class WeekList extends StatelessWidget {
  const WeekList({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CourseDetailViewModel.of(context);

    return ListView.separated(
      separatorBuilder: (context, index) {
        return context.emptySizedWidthBoxNormal;
      },
      scrollDirection: Axis.horizontal,
      itemCount: provider.courseDetail.syllabus!.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomChip(
              borderRadius: RadiusConstant.instance.radiusHight,
              backgroundColor: ColorConstant.instance.appBlue,
              text: 'Week ${index + 1}',
            ),
          ],
        );
      },
    );
  }
}
