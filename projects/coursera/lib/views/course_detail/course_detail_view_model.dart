import 'package:coursera/core/base/base_view_model.dart';

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
}
