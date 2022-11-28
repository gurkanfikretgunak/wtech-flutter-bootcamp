import '../../../../core/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/custom_viewer_image.dart';
import '../../../../core/components/text/text_libary.dart';
import '../../../../core/constants/constant_libary.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.data,
    this.isFreeCoursesList,
  });
  final dynamic data;
  final bool? isFreeCoursesList;
  @override
  Widget build(BuildContext context) {
    return isFreeCoursesList != null
        ? Padding(
            padding: context.onlyBottomPaddingNormal,
            child: CustomCard(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: context.dynamicHeight(0.08),
                    child: CourseInformation(
                      data: data,
                    ),
                  ),
                  Container(
                    color: Colors.pink,
                    width: context.dynamicWidth(0.3),
                    child: CustomImageViewer(
                      url: data.courseImage.toString(),
                    ),
                  ),
                ],
              ),
            ),
          )
        : CustomCard(
            width: context.dynamicWidth(0.35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageViewer(url: data.courseImage.toString()),
                SizedBox(
                  height: context.dynamicHeight(0.12),
                  child: CourseInformation(
                    data: data,
                  ),
                ),
              ],
            ),
          );
  }
}

class CourseInformation extends StatelessWidget {
  const CourseInformation({
    super.key,
    required this.data,
  });

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          textAlign: TextAlign.start,
          text: data.courseName.toString(),
          fontSize: 16,
          maxLines: 2,
        ),
        CustomText(
          textAlign: TextAlign.start,
          text: data.courseDescription.toString(),
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
              text: data.coursePoint.toString(),
              color: ColorConstant.instance.appGrey3,
            )
          ],
        )
      ],
    );
  }
}
