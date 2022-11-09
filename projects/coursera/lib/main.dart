import 'package:coursera/core/app.dart';
import 'package:coursera/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: ConstantsClass.instance.appBlack,
    ),
  );
  runApp(const App());
}
