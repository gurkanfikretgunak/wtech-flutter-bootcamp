import 'package:coursera/core/constants/constant_libary.dart';
import 'package:coursera/core/data/enum/enum_hive.dart';
import 'package:coursera/views/bottom_nav_bar/learn/widgets/my_courses_list.dart';
import 'package:flutter/material.dart';

import '../../../core/components/custom_scaffold.dart';
import '../../../core/components/text/text_libary.dart';
import '../../../core/data/model/user.dart';
import '../../../core/init/cache/user_cache_manager.dart';
import '../bottom_nav_bar_view_model.dart';
import 'widgets/empty_learn.dart';
import 'package:kartal/kartal.dart';

class LearnView extends StatefulWidget {
  const LearnView({super.key});

  @override
  State<LearnView> createState() => _LearnViewState();
}

class _LearnViewState extends State<LearnView> {
  User user = UserCacheManager().get(EnumHive.activeUser.toString());

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        isDrawer: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: "Learn",
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            context.emptySizedHeightBoxLow3x,
            Expanded(
              child: CustomText(
                text: "My Coursera",
                color: ColorConstant.instance.appGrey3,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.start,
              ),
            ),
            context.emptySizedHeightBoxLow,
            user.userCourse!.isEmpty
                ? const Expanded(
                    flex: 10,
                    child: EmptyLearnView(),
                  )
                : Expanded(
                    flex: 15,
                    child: MyCoursesList(myCourseList: user.userCourse!),
                  )
          ],
        ));
  }
}
