//fonksiyonlar anonim fonksiyonların isimleriyle isimlendirilmezler
//print() fonksiyon olarak tanımlanamaz
//main(),toString(),

void main(List<String> args) {
  ustFonksiyon("ali");
}

//iç içe fonksiyonlar

ustFonksiyon(String ilkDeger) {
  int sayi = 43;
  print(ilkDeger);

  ikinciFonksiyon(String ikinciDeger) {
    int sayi2 = 65;
    print(ikinciDeger);
    print(sayi);

    sonFonksiyon() {
      print("Merhaba $ilkDeger $sayi ve $ikinciDeger $sayi2");
    }

    sonFonksiyon();
  }

  ikinciFonksiyon("ahmet");
}

//return values
//1.geriye değer döndürmeyen fonksiyonlar
void selam() {
  String sonuc = "Merhaba";
  print(sonuc);
}

//2.geriye değer döndürn fonksiyonlar
String selamlar() {
  String sonuclar = "Merhaba";
  return sonuclar;
}
