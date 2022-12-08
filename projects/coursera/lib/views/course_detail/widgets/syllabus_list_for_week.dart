import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/custom_divider.dart';
import '../../../core/components/text/text_libary.dart';
import '../course_detail_view_model.dart';

class SyllabusListForWeek extends StatelessWidget {
  const SyllabusListForWeek({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CourseDetailViewModel().of(context);

    List<String>? week1List = provider.courseDetail.syllabus![0].week1;
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const CustomDivider();
      },
      itemCount: week1List!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.verticalPaddingNormal,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            children: [
              const Icon(Icons.video_collection_outlined),
              CustomText(
                text: week1List[index],
              ),
            ],
          ),
        );
      },
    );
  }
}
