import 'package:flutter_test/flutter_test.dart';

import 'package:robinhood_playground/core/data/model/user.dart';
import 'package:robinhood_playground/product/client/retrofit_manager.dart';

void main() {
  setUp(() {});
  test('Retrofit Test ', () async {
    final clients = RetrofitManager.instance.client;
    List<UserModel> users = await clients.getUsers();

    for (var item in users) {
      print(item.email);
    }
  });
}
