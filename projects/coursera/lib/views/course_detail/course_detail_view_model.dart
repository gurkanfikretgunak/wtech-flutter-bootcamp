import '../../core/base/base_view_model.dart';
import 'package:flutter/material.dart';
import '../../core/components/text/custom_auto_size_text.dart';
import '../../core/data/enum/enum_hive.dart';
import '../../core/data/model/course.dart';
import '../../core/data/model/user.dart';
import '../../core/init/cache/user_cache_manager.dart';

class CourseDetailViewModel extends IViewModel<CourseDetailViewModel> {
  Course _courseDetail = Course();
  Course get courseDetail => _courseDetail;

  set courseDetail(Course course) {
    _courseDetail = course;
    notifyListeners();
  }

  User get user => UserCacheManager().get(EnumHive.activeUser.toString());

  enrollCourse(BuildContext context) {
    final provider = CourseDetailViewModel().of(context, listen: false);

    CourseDetailViewModel().user.userCourse!.add(provider.courseDetail);
    (CourseDetailViewModel().user.userCourse!.contains(provider.courseDetail))
        ? ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: CustomText(text: "You have enrolled for the course"),
            ),
          )
        : ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: CustomText(text: "An error has occurred, try again."),
            ),
          );
  }
}
