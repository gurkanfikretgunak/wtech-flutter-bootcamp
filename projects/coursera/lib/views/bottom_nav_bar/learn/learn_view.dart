import 'package:coursera/core/components/custom_chip.dart';
import 'package:coursera/core/data/enum/enum_hive.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/button/button_libary.dart';
import '../../../core/components/custom_scaffold.dart';
import '../../../core/components/text/text_libary.dart';
import '../../../core/data/model/user.dart';
import '../../../core/init/cache/user_cache_manager.dart';

class LearnView extends StatefulWidget {
  const LearnView({super.key});

  @override
  State<LearnView> createState() => _LearnViewState();
}

class _LearnViewState extends State<LearnView> {
  User user = UserCacheManager().get(EnumHive.activeUser.toString());

  // @override
  // void initState() {
  //   getActiveUser();
  //   super.initState();
  // }

  // getActiveUser() async {
  //   user = await UserCourseHiveCache().get("user");
  //   print("Userrrr ->       $user");
  // }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isDrawer: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Learn",
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          context.emptySizedHeightBoxNormal,
          Container(
            color: Colors.pink,
            height: 200,
            child: ListView.builder(
              itemCount: user.userCourse!.length,
              itemBuilder: (context, index) {
                return CustomChip(
                    text: user.userCourse![index].courseName ?? "Boşşş");
              },
            ),
          ),
          // const Center(
          //   child: Image(
          //     image: AssetImage("assets/learn_page_image_1.png"),
          //   ),
          // ),
          // const CustomText(
          //   text: "You haven't enrolled in anycourses (yet)",
          //   maxLines: 3,
          //   textAlign: TextAlign.center,
          //   fontWeight: FontWeight.w600,
          //   fontSize: 20,
          // ),
          // const CustomText(
          //   text: "Start by enrolling in a course and learn something new.",
          //   maxLines: 3,
          //   textAlign: TextAlign.center,
          //   fontSize: 20,
          // ),
          // context.emptySizedHeightBoxNormal,
          CustomElevatedButton(
            onPressed: () {},
            text: "Explore courses",
          ),
          context.emptySizedHeightBoxNormal,
        ],
      ),
    );
  }
}
