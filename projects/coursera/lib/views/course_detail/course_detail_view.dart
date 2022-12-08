import 'package:coursera/core/components/button/button_libary.dart';
import 'package:coursera/core/components/custom_app_bar.dart';
import 'package:coursera/core/components/custom_scaffold.dart';
import 'package:coursera/core/components/text/custom_auto_size_text.dart';
import 'package:coursera/views/course_detail/course_detail_view_model.dart';
import 'package:coursera/views/course_detail/widgets/syllabus_list_for_week.dart';
import 'package:coursera/views/course_detail/widgets/week_list.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../core/components/custom_viewer_image.dart';

class CourseDetailView extends StatelessWidget {
  const CourseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CourseDetailViewModel().of(context);

    return CustomScaffold(
      appBar: CustomAppBar.customAppBar(
        context: context,
        titleText: 'Course Detail',
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              width: context.dynamicWidth(1),
              child: CustomImageViewer(
                url: provider.courseDetail.courseImage,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomText(
              text: provider.courseDetail.about!,
              maxLines: 1000,
              textAlign: TextAlign.start,
            ),
          ),
          const Expanded(
            flex: 2,
            child: WeekList(),
          ),
          const Expanded(
            flex: 5,
            child: SyllabusListForWeek(),
          ),
          Expanded(
            child: CustomElevatedButton(
              onPressed: () {},
              text: 'Enroll',
            ),
          ),
        ],
      ),
    );
  }
}
