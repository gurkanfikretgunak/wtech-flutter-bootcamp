import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/model/course.dart';
import '../data/model/user.dart';

abstract class ICacheManager<T> {
  Future openBox();

  void registerAdapters() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(CourseAdapter());
      Hive.registerAdapter(SyllabusAdapter());
      Hive.registerAdapter(UserAdapter());
    }
  }

  ValueListenable<Box<dynamic>> listenable();

  bool containsKey(String key);

  Future<void> delete(String key);

  Iterable<dynamic> getValues();

  Future<void> put(String key, T data);

  dynamic get(String key);
}
