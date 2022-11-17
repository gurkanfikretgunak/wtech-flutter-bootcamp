import 'package:dio/dio.dart';
import '../model/user/users_model.dart';

class Service {
  final String baseUrl = "https://636eb123bb9cf402c807e3fd.mockapi.io/";
  final dio = Dio();
  Future<Users?> loginCall({required String email}) async {
    Map<String, dynamic> json = {"email": email};
    var response = await dio.post(baseUrl + "users", data: json);
    if (response.statusCode == 200) {
      var result = Users.fromJson(response.data);
      return result;
    } else {
      throw ("Bir sorun oluştu ${response.statusCode}");
    }
  }
}
