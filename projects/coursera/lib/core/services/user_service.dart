import 'dart:convert';

import 'package:coursera/core/model/user.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class UserService {
  final logger = Logger();

  static Future<User> fetchUser() async {
    final response = await http
        .get(Uri.parse("https://636cf5eeab4814f2b273ea87.mockapi.io/user/1"));
    var responseLogger = Logger().i(response.body.length);

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
