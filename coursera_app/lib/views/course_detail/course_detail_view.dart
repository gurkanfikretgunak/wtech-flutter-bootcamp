import '../../core/components/button/button_libary.dart';
import '../../core/components/custom_app_bar.dart';
import '../../core/components/custom_scaffold.dart';
import '../../core/components/text/custom_auto_size_text.dart';
import 'course_detail_view_model.dart';
import 'widgets/syllabus_list_for_week.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../core/components/custom_viewer_image.dart';

class CourseDetailView extends StatelessWidget {
  const CourseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CourseDetailViewModel().of(context);

    return CustomScaffold(
      appBar: CustomAppBar.customAppBar(context: context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: CustomText(
              text: provider.courseDetail.courseName!,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Expanded(
            flex: 6,
            child: SizedBox(
              width: context.dynamicWidth(1),
              child: CustomImageViewer(
                url: provider.courseDetail.courseImage,
              ),
            ),
          ),
          context.emptySizedHeightBoxLow,
          Expanded(
            flex: 3,
            child: Padding(
              padding: context.verticalPaddingLow,
              child: CustomText(
                text: provider.courseDetail.about!,
                maxLines: 1000,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const Expanded(
            flex: 7,
            child: SyllabusListForWeek(),
          ),
          const Spacer(),
          Flexible(
            child: CustomElevatedButton(
              onPressed: () {
                CourseDetailViewModel().enrollCourse(context);
              },
              text: 'Enroll',
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
