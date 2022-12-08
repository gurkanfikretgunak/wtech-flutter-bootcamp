import 'package:coursera/core/base/base_view_model.dart';

import '../../core/data/model/course.dart';

class CourseDetailViewModel extends IViewModel<CourseDetailViewModel> {
  Course _courseDetail = Course();
  Course get courseDetail => _courseDetail;

  set courseDetail(Course course) {
    _courseDetail = course;
    notifyListeners();
  }
}
