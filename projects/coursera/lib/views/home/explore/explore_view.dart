import 'explore_custom_widget/titles.dart';
import 'package:kartal/kartal.dart';
import '../../../core/components/custom_scaffold.dart';
import 'explore_custom_widget/free_courses_list.dart';
import 'explore_custom_widget/most_popular_certificates_list.dart';
import 'explore_custom_widget/topic_list.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constant_libary.dart';
import '../../../core/components/text/text_libary.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isDrawer: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            context.emptySizedHeightBoxLow,
            context.emptySizedHeightBoxLow,
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
