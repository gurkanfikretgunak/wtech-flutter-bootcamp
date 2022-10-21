void main(List<String> args) {
  fonksiyon("emine", 29);

  int sonuc = toplama(2, 3);
  print(sonuc);
}

//fonksiyonlar main in dışında tanımlanırlar
//main fonksiyonunun içinde çağırılırlar

fonksiyon(String ad, int yas) {
  print("adım:" + ad);
  print("yaşım:" + yas.toString());
}

int toplama(int a, int b) {
  //int sonuc = a + b;
  //return sonuc;
  return a + b;
}

double bolme(int a, int b) => a / b;
