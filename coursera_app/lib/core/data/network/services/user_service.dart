import 'package:coursera/core/base/base_retrofit_service.dart';
import 'package:coursera/core/data/model/user.dart';

class UserService extends IRetrofitService<User> {
  @override
  Future<User> createEntity(User entity) {
    return client.createUser(entity);
  }

  @override
  Future<List<User>> getAll() {
    return client.getAllUsers();
  }
}
