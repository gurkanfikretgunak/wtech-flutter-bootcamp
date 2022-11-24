import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/constants/constant_libary.dart';

import 'core/app.dart';
import 'core/init/cache/shared_manager.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: ColorConstant.instance.appBlack,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await StorageUtil.getInstance();
  runApp(const App());
}
