import 'package:flutter/cupertino.dart';

import '../../core/data/model/course.dart';

class CourseDetailViewModel with ChangeNotifier {
  Course _courseDetail = Course();
  Course get courseDetail => _courseDetail;

  set courseDetail(Course course) {
    _courseDetail = course;
    notifyListeners();
  }
}
