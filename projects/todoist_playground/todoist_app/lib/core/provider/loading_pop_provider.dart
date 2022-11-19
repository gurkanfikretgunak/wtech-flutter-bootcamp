import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:todoist_app/views/home_page_view.dart';
import 'package:todoist_app/widgets/loading_widget.dart';
import 'package:grock/grock.dart';

import '../../service/data_service.dart';

class LoginRiverpod extends ChangeNotifier {
  void fetch() {
    const LoadingPage(
      logText: "Deneme",
    );
    RestClient(Dio(BaseOptions(contentType: "application/json")),
            baseUrl: "https://636eb123bb9cf402c807e3fd.mockapi.io/")
        .getUsers()
        .then((value) {
      if (value != null) {
        Grock.back();
        Grock.toRemove(const MyHomePage());
      } else {
        Grock.back();
        Grock.snackBar(title: "Hata", description: "Bir sorun oluştu, tekrar deneyin.");
      }
    });
  }
}
