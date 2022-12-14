import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/custom_circular_progress_indicator.dart';
import '../../../../core/data/model/course.dart';
import '../../../../core/data/network/services/course_service.dart';
import 'course_card.dart';

class MostPopularCertificatesList extends StatefulWidget {
  const MostPopularCertificatesList({super.key});

  @override
  State<MostPopularCertificatesList> createState() =>
      _MostPopularCertificatesListState();
}

class _MostPopularCertificatesListState
    extends State<MostPopularCertificatesList> {
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
        height: context.dynamicHeight(0.25),
        child: FutureBuilder<List<Course>>(
          future: futureCourse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return CourseCard(
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
