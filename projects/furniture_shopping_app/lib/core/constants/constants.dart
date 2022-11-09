import 'package:flutter/material.dart';

//Singleton design pattern, çalışma zamanında yalnızca bir obje yaratılmasını garanti eden bir tasarım desenidir.
//Birden çok sınıfın aynı intence'ı kullanması gerektiğinde bu yapı kullanılabilir.

class ConstantsClass {
  static final ConstantsClass _instance = ConstantsClass._init();
  static ConstantsClass get instance => _instance;
  ConstantsClass._init();

  Color appBlack = const Color.fromRGBO(0, 0, 0, 1);
}
