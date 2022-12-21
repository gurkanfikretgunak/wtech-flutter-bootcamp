import 'package:coursera/core/base/base_retrofit_service.dart';
import 'package:coursera/core/data/model/course.dart';

class CourseService extends IRetrofitService {
  @override
  Future<List<Course>> getAll() {
    return client.getAllCourses();
  }

  @override
  Future? getById(String id) {
    return client.courseGetByIs(id);
  }
}
