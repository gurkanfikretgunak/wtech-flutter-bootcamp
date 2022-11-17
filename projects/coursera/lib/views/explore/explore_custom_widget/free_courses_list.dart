import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/core/model/course.dart';
import 'package:coursera/core/services/service.dart';
import 'package:coursera/widgets/custom_card.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
    futureCourse = TopicServiceRetrofit().getCourses();
  }

  @override
  Widget build(BuildContext context) {
    Constant constant = Constant.instance;

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
                              color: constant.appGreyDark,
                            ),
                            CustomText(
                              textAlign: TextAlign.start,
                              text: "John Hopkins University",
                              maxLines: 2,
                              color: constant.appGreyDark,
                            ),
                            Row(
                              children: [
                                Icon(
                                  color: constant.appBlack,
                                  Icons.star,
                                  size: 20,
                                ),
                                CustomText(
                                  text: "4.8(79K)",
                                  color: constant.appGreyDark,
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
            return CircularProgressIndicator(color: constant.appBlue);
          },
        ),
      ),
    );
  }
}
