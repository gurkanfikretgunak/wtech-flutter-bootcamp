import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/text/text_libary.dart';
import '../../../../core/constants/constant_libary.dart';
import '../../../../core/data/model/course.dart';

class CourseInformation extends StatelessWidget {
  const CourseInformation({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          textAlign: TextAlign.start,
          text: course.courseName.toString(),
          fontSize: 16,
          maxLines: 2,
        ),
        CustomText(
          textAlign: TextAlign.start,
          text: course.courseDescription.toString(),
          color: ColorConstant.instance.appGrey3,
          maxLines: 2,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 18,
              color: ColorConstant.instance.appGrey3,
            ),
            context.emptySizedWidthBoxLow,
            CustomText(
              text: course.coursePoint.toString(),
              color: ColorConstant.instance.appGrey3,
            )
          ],
        )
      ],
    );
  }
}
