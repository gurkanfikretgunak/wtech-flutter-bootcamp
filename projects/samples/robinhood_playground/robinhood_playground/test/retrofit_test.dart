import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:robinhood_playground/core/data/api/client_api.dart';
import 'package:robinhood_playground/core/data/model/user.dart';


void main() {
  setUp(() {});
  test('Retrofit Test ', () async {
    final client =
        ApiClient(Dio(BaseOptions(contentType: 'application/json"')));

    List<UserModel> users = await client.getUsers();
    for (var item in users) {
      print(item.firstName);
    }
  });
}


