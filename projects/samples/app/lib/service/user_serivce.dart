import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;

import '../model/users.dart';


class UserSerive {
  Future<User> fetchUsers() async{

   final response = await  http.get(Uri.parse(
    "https://636c17257f47ef51e1421592.mockapi.io/api/v1/users/1"))

    if (response.statusCode = 200) {
         return User.fromJson(jsonDecode(response.body))
      
      
    } else {
       throw Exception('Failed to load user');
    }
    }
  }
