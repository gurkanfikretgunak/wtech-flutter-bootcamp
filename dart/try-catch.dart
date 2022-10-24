

import 'dart:io';
//kullanıcıdan veri almak için importumuzu yaptık

void main(List<String> args) {
  try {
//hata olma olasılığı yüksek kodumuzu try bloğu içerisine yazdık.

    print("lütfen bir sayı giriniz");
    int sayi = int.parse(stdin.readLineSync()!);
//kullanıcıdan int tipinde vermesini istediğimiz bir değer girmesini istedik.
//kullanıcı bize sayı yerine ismini girerse aşağıdaki resimdeki gibi bir çıktı verecektir

    print(sayi);
  } catch (e) {
//catch bloğu ile hatamızı yakaladık ve print ile yazdırdık.

    print("hata meydana geldi " + e.toString());
//hatamızı yakaladık
//ÇIKTI: hata meydana geldi FormatException: Invalid radix-10 number (at character 1)

  }
  print("devam eden kod");
}
