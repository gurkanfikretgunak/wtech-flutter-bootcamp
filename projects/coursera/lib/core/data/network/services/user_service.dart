import '../../../base/base_service.dart';
import '../../model/user.dart';

class UserService extends IRetrofitService<User> {
  @override
  Future<User>? createEntity(User entity) {
    return client.createUser(entity);
  }
}
