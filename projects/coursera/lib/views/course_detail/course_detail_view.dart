import 'package:coursera/core/components/button/button_libary.dart';
import 'package:coursera/core/components/custom_app_bar.dart';
import 'package:coursera/core/components/custom_scaffold.dart';
import 'package:coursera/core/components/text/custom_auto_size_text.dart';
import 'package:coursera/views/course_detail/course_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../authentication/sign_up/sign_up_view_model.dart';

class CourseDetailView extends StatelessWidget {
  const CourseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: CustomAppBar.customAppBar(
          context: context,
          titleText: 'Course Detail',
        ),
        body: Column(
          children: [
            CustomText(
                text: context
                    .watch<CourseDetailViewModel>()
                    .courseDetail
                    .courseName!),
            CustomElevatedButton(
              onPressed: () {},
              text: 'Enroll',
            ),
          ],
        ));
  }
}
