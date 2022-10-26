enum Proje {
  ANDROID,
  IOS,
  FLUTTER,
}

main() {
  var projeTipi = Proje.FLUTTER;

  switch (projeTipi) {
    case Proje.ANDROID:
      print("Kotlin kullan");
      break;
    case Proje.IOS:
      print("Swift kullan");
      break;
    case Proje.FLUTTER:
      print("Dart kullan");
      break;
  }
}
