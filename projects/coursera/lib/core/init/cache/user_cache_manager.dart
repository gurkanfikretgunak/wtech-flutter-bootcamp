import '../../base/cache_manager.dart';
import '../../data/enum/enum_hive.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../data/model/user.dart';

class UserCacheManager extends ICacheManager<User> {
  @override
  Future<void> put(String key, User data) {
    return Hive.box(EnumHive.userBox.toString()).put(key, data);
  }

  @override
  dynamic get(String key) {
    return Hive.box(EnumHive.userBox.toString()).get(key);
  }

  @override
  Future openBox() async {
    await Hive.openBox(EnumHive.userBox.toString());
  }

  @override
  ValueListenable<Box<dynamic>> listenable() {
    return Hive.box(EnumHive.userBox.toString()).listenable();
  }

  @override
  bool containsKey(String key) {
    return Hive.box(EnumHive.userBox.toString()).containsKey(key);
  }

  @override
  Future<void> delete(String key) {
    return Hive.box(EnumHive.userBox.toString()).delete(key);
  }

  @override
  Iterable<dynamic> getValues() {
    return Hive.box(EnumHive.userBox.toString()).values;
  }
}
