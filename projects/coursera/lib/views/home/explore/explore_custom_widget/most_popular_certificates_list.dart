import '../../../../core/data/network/services/course_service.dart';

import '../../../../core/components/custom_circular_progress_indicator.dart';

import '../../../../core/data/model/course.dart';
import '../../../../core/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/constants/constant_libary.dart';

import '../../../../core/components/text/text_libary.dart';

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

    //  TopicServiceRetrofit().getCourses();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingMedium,
      child: SizedBox(
        height: context.dynamicHeight(0.3),
        child: FutureBuilder<List<Course>>(
          future: futureCourse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return CustomCard(
                    width: context.dynamicWidth(0.4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: context.dynamicHeight(0.12),
                          width: double.infinity,
                          child: Image.network(
                            fit: BoxFit.contain,
                            alignment: Alignment.centerLeft,
                            snapshot.data![index].courseImage.toString(),
                          ),
                        ),
                        CustomText(
                          textAlign: TextAlign.start,
                          text: snapshot.data![index].courseName.toString(),
                          fontSize: 16,
                          maxLines: 2,
                        ),
                        CustomText(
                          textAlign: TextAlign.start,
                          text: snapshot.data![index].courseDescription
                              .toString(),
                          color: ColorConstant.instance.appGreyDark,
                          maxLines: 2,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                            ),
                            CustomText(
                              text:
                                  snapshot.data![index].coursePoint.toString(),
                              fontSize: 18,
                              color: ColorConstant.instance.appGreyDark,
                            )
                          ],
                        )
                      ],
                    ),
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
