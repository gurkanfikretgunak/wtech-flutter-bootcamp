import 'dart:io';

main(List<String> args) {
  print("adınızı giriniz");
  String? isim = stdin.readLineSync();
  print("girilen isim $isim");

  print("yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  yas = yas + 5;
  print("girilen yas $yas");
}
