import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class ICacheManager<T> {
  openBox();

  void registerAdapters();
  ValueListenable<Box<dynamic>> listenable();

  bool containsKey(String key);
  delete(String key);

  Iterable<dynamic> getValues();

  Future<void> put(String key, T data);
  get(String key);
}
