import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:app/model/users.dart';

class UserService {
  Future<List<User>> fetchUser() async {
    var response = await http.get(Uri.parse('https://636bdef1ad62451f9fbe0525.mockapi.io/users'));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load user');
    }
  }
}
