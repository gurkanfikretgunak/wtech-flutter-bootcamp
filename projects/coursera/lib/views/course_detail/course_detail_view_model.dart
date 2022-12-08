import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../core/data/model/course.dart';

class CourseDetailViewModel with ChangeNotifier {
  Course _courseDetail = Course();
  Course get courseDetail => _courseDetail;

  set courseDetail(Course course) {
    _courseDetail = course;
    notifyListeners();
  }

  static CourseDetailViewModel of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CourseDetailViewModel>(
      context,
      listen: listen,
    );
  }
}
