import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../core/constants/constant_libary.dart';
import 'core/app.dart';
import 'core/init/cache/user_cache_manager.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: ColorConstant.instance.appBlack,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  UserCacheManager().registerAdapters();
  UserCacheManager().openBox();
  await Hive.openBox("themedata");
  runApp(const App());
}
