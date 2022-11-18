import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/constants/constant_libary.dart';

import 'core/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: ColorConstant.instance.appBlack,
    ),
  );
  runApp(const App());
}
