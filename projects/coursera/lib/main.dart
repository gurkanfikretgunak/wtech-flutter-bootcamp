import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../core/constants/constant_libary.dart';
import 'core/app.dart';
import 'core/init/cache/shared_manager.dart';
import 'core/init/cache/user_course_cache_hive.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: ColorConstant.instance.appBlack,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await StorageUtil.getInstance();
  await Hive.initFlutter();
  UserCourseHiveCache().registerAdapters();
  UserCourseHiveCache().openBox();
  runApp(const App());
}
