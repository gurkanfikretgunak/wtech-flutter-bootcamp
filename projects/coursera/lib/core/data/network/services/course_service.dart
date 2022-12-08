import '../../../base/base_retrofit_service.dart';
import '../../model/course.dart';

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
