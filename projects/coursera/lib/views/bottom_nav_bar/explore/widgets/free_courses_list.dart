import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/custom_circular_progress_indicator.dart';
import '../../../../core/data/model/course.dart';
import '../../../../core/data/network/services/course_service.dart';
import 'course_card.dart';

class FreeCoursesList extends StatefulWidget {
  const FreeCoursesList({super.key});

  @override
  State<FreeCoursesList> createState() => _FreeCoursesListState();
}

class _FreeCoursesListState extends State<FreeCoursesList> {
  late Future<List<Course>> futureCourse;
  @override
  void initState() {
    super.initState();
    futureCourse = CourseService().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingNormal,
      child: SizedBox(
        height: context.dynamicHeight(2),
        child: FutureBuilder<List<Course>>(
          future: futureCourse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return CourseCard(
                    isFreeCoursesList: true,
                    course: snapshot.data![index],
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CustomCircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
