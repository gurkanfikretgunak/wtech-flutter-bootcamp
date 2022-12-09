import 'package:coursera/core/base/cache_manager.dart';
import 'package:coursera/core/data/enum/enum_hive.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../data/model/course.dart';
import '../../data/model/user.dart';

class UserCourseHiveCache extends ICacheManager<User> {
  @override
  Future<void> put(String key, User data) {
    return Hive.box(EnumHive.activeUser.toString()).put(key, data);
  }

  @override
  get(String key) {
    return Hive.box(EnumHive.activeUser.toString()).get(key);
  }

  @override
  openBox() async {
    await Hive.openBox(EnumHive.activeUser.toString());
  }

  @override
  ValueListenable<Box<dynamic>> listenable() {
    return Hive.box(EnumHive.activeUser.toString()).listenable();
  }

  @override
  bool containsKey(String key) {
    return Hive.box(EnumHive.activeUser.toString()).containsKey(key);
  }

  @override
  delete(String key) {
    return Hive.box(EnumHive.activeUser.toString()).delete(key);
  }

  @override
  Iterable<dynamic> getValues() {
    return Hive.box(EnumHive.activeUser.toString()).values;
  }

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(CourseAdapter());
      Hive.registerAdapter(SyllabusAdapter());
      Hive.registerAdapter(UserAdapter());
    }
  }
}
