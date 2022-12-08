import 'package:coursera/core/init/routes/custom_navigator.dart';
import 'package:coursera/views/course_detail/course_detail_view_model.dart';
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
  });
  final Course course;
  final bool? isFreeCoursesList;
  @override
  Widget build(BuildContext context) {
    return isFreeCoursesList != null
        ? GestureDetector(
            onTap: () {
              CustomNavigator.goToScreen(context, '/CourseDetailView');
              context.read<CourseDetailViewModel>().courseDetail = course;
            },
            child: Padding(
              padding: context.onlyBottomPaddingNormal,
              child: CustomCard(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: context.dynamicHeight(0.08),
                      child: CourseInformation(
                        course: course,
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      width: context.dynamicWidth(0.3),
                      child: CustomImageViewer(
                        url: course.courseImage.toString(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : CustomCard(
            width: context.dynamicWidth(0.35),
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
          );
  }
}
