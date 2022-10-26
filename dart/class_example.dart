/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
  Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 */
/*
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 */

main(List<String> args) {
  int sayi = 3;
  var sayi2 = 13;
  Ogrenci beyza = Ogrenci();
  beyza.ogrAd = "beyza aktürk";
  beyza.ogrNo = 123;
  beyza.aktifMi = true;
  Ogrenci selin = Ogrenci();
  Ogrenci gizem = Ogrenci();
  print(beyza.ogrAd);
  selin.dersCalis();
  var uras = Ogrenci();
}

class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String? ogrAd = "";
  bool? aktifMi = true;

  void dersCalis() {
    print("Öğrenci ders calısıyor");
  }
}
