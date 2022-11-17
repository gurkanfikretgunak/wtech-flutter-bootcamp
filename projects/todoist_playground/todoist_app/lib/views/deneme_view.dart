import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:grock/grock.dart';
import 'package:todoist_app/service/deneme_service.dart';
import 'package:todoist_app/views/welcome_page_view.dart';

import '../model/user/users_model.dart';
import '../service/data_service.dart';

class LoginCome extends StatefulWidget {
  const LoginCome({Key? key}) : super(key: key);

  @override
  State<LoginCome> createState() => _LoginComeState();
}

class _LoginComeState extends State<LoginCome> {
  List<Users> response = [];
  void fetchUser() async {
    final client = RestClient(Dio(BaseOptions(contentType: "application/json")),
        baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/");
    response = await client.getUsers();
  }

  Future<bool> fetch(email) async {
    final service = Service();
    for (var item in response) {
      if (item.email == email.text) {
        print("kullanıcı var");
        return true;
      }
    }
    await service.loginCall(email: email.text);
    return false;
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: 20.allP,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "E-Mail",
                  border: OutlineInputBorder(
                    borderRadius: 10.allBR,
                  ),
                ),
              ),
              SizedBox(
                width: Grock.width,
                child: ElevatedButton(
                  onPressed: () async {
                    bool _isCheck = await fetch(email);
                    if (_isCheck) {
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WelcomeToApp()),
                      );
                    } else {
                      print("kullanıcı yok");
                    }
                  },
                  child: const Text(
                    "Giriş Yap",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
