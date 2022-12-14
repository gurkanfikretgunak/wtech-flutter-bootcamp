import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/constant_libary.dart';
import '../../../core/components/custom_scaffold.dart';
import '../../../core/components/text/text_libary.dart';
import 'widgets/free_courses_list.dart';
import 'widgets/most_popular_certificates_list.dart';
import 'widgets/titles.dart';
import 'widgets/topic_list.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isDrawer: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            const Titles(
              titleText: 'Explore',
              titleFontSize: 28,
            ),
            Padding(
              padding: context.verticalPaddingNormal,
              child: CustomTextFormField(
                borderRadius: 15,
                fillColor: ColorConstant.instance.appGrey1,
                prefixIcon: Icons.search_outlined,
                hintText: "What do you want to learn?",
              ),
            ),
            const Titles(
              titleText: "Topics",
              isSeeAll: true,
            ),
            const TopicList(),
            Titles(
              titleText: 'My Coursera',
              titleColor: ColorConstant.instance.appGrey3,
            ),
            const Titles(
              titleText: 'Most Popular Certificates',
              isSeeAll: true,
            ),
            const MostPopularCertificatesList(),
            const Titles(
              titleText: "Get Started with These Free Courses",
              isSeeAll: true,
            ),
            const FreeCoursesList()
          ],
        ),
      ),
    );
  }
}
