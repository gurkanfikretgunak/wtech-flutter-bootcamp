import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/core/model/course.dart';
import 'package:coursera/core/services/service.dart';
import 'package:coursera/widgets/custom_card.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
    futureCourse = TopicServiceRetrofit().getCourses();
  }

  @override
  Widget build(BuildContext context) {
    ConstantsClass constant = ConstantsClass.instance;

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
                          color: constant.appGreyDark,
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
                              color: constant.appGreyDark,
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
            return CircularProgressIndicator(color: constant.appBlue);
          },
        ),
      ),
    );
  }
}
