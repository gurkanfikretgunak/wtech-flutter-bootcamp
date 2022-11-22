import 'package:coursera/core/data/network/services/course_service.dart';

import '../../../../core/components/custom_circular_progress_indicator.dart';

import '../../../../core/data/model/course.dart';
import '../../../../core/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/constants/constant_libary.dart';

import '../../../../core/components/text/text_libary.dart';

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
      padding: context.verticalPaddingMedium,
      child: SizedBox(
        height: context.dynamicHeight(0.5),
        child: FutureBuilder<List<Course>>(
          future: futureCourse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: context.verticalPaddingLow,
                    child: CustomCard(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                              maxLines: 2,
                              color: ColorConstant.instance.appGreyDark,
                            ),
                            CustomText(
                              textAlign: TextAlign.start,
                              text: "John Hopkins University",
                              maxLines: 2,
                              color: ColorConstant.instance.appGreyDark,
                            ),
                            Row(
                              children: [
                                Icon(
                                  color: ColorConstant.instance.appBlack,
                                  Icons.star,
                                  size: 20,
                                ),
                                CustomText(
                                  text: "4.8(79K)",
                                  color: ColorConstant.instance.appGreyDark,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: context.dynamicHeight(0.12),
                          width: context.dynamicWidth(0.25),
                          child: Image.network(
                            fit: BoxFit.contain,
                            snapshot.data![index].courseImage.toString(),
                          ),
                        ),
                      ],
                    )),
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
