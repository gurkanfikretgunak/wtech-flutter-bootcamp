import 'package:coursera/core/constants/constant_libary.dart';

import '../../../../core/init/routes/custom_navigator.dart';
import '../../../course_detail/course_detail_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/components/custom_viewer_image.dart';
import '../../../../core/data/model/course.dart';
import 'course_information.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.course,
    this.isFreeCoursesList,
    this.isLearnPage,
  });
  final Course course;
  final bool? isFreeCoursesList;
  final bool? isLearnPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomNavigator.goToScreen(context, '/CourseDetailView');
        context.read<CourseDetailViewModel>().courseDetail = course;
      },
      child: (isFreeCoursesList != null || isLearnPage != null)
          ? Padding(
              padding: context.onlyBottomPaddingNormal,
              child: CustomCard(
                color: ColorConstant.instance.appGrey2,
                child: isLearnPage == null
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: context.paddingLow,
                              child: SizedBox(
                                height: context.dynamicHeight(0.12),
                                child: CourseInformation(
                                  course: course,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Center(
                              child: CustomImageViewer(
                                url: course.courseImage.toString(),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Center(
                              child: CustomImageViewer(
                                url: course.courseImage.toString(),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: context.paddingLow,
                              child: SizedBox(
                                height: context.dynamicHeight(0.11),
                                child: CourseInformation(
                                  course: course,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            )
          : CustomCard(
              color: ColorConstant.instance.appGrey2,
              width: context.dynamicWidth(0.35),
              child: Padding(
                padding: context.paddingLow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageViewer(url: course.courseImage.toString()),
                    SizedBox(
                      height: context.dynamicHeight(0.12),
                      child: CourseInformation(
                        course: course,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
