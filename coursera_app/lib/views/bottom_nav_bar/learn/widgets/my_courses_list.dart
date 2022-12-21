import 'package:flutter/material.dart';

import '../../../../core/data/model/course.dart';
import '../../explore/widgets/course_card.dart';

class MyCoursesList extends StatelessWidget {
  const MyCoursesList({
    super.key,
    required this.myCourseList,
  });

  final List<Course?>? myCourseList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myCourseList!.length,
      itemBuilder: (context, index) {
        return CourseCard(
          course: myCourseList![index]!,
          isLearnPage: true,
        );
        // CustomCard(
        //   elevation: 10,
        //   height: context.dynamicHeight(0.25),
        //   child: Padding(
        //     padding: context.paddingNormal,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         SizedBox(
        //           width: context.dynamicWidth(0.3),
        //           child: CustomImageViewer(
        //             fit: BoxFit.cover,
        //             url: myCourseList[index].courseImage,
        //           ),
        //         ),
        //         context.emptySizedHeightBoxLow,
        //         CustomText(
        //           text: myCourseList[index].courseName!,
        //           fontSize: 20,
        //           fontWeight: FontWeight.w600,
        //           maxLines: 2,
        //         ),
        //         context.emptySizedHeightBoxLow,
        //         CustomText(
        //           text: myCourseList[index].courseDescription.toString(),
        //         ),
        //       ],
        //     ),
        //   ),
        // );
      },
    );
  }
}
