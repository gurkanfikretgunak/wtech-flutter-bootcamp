void main(List<String> args) {
  int x = 5;
  int y = 10;
  int z = 50;

  int topla = x + y + z;
  print(topla);

  int cikar = z - y - x;
  print(cikar);

  int carp = x * y * z;
  print(carp);

  double bol = y / x;
  print(bol);

  int modal = z % 5;
  print(modal);

  //atama operatörleri
  int sayi;
  int sayi1 = 5;
  int sayi2 = 10;

  /* sayi1= sayi1+sayi2;
  sayi=sayi1;
  print(sayi); */

  //yukarıdaki yorum satırları içerisine alınmış ifade ile aşağıdaki ifade aynı sonucu verir.
  sayi = sayi1 += sayi2;
  print(sayi);

  //kısaca x = x+y yerine x+=y kullanılabilir
  //diğer örneklerde aynı şekilde ifade edilir

//Arttırma ve Azaltma Operatörleri:
  int sayii = 2;
  sayi1++;
  print(sayii);

  int sayii2 = 5;
  sayi2--;
  print(sayii2);

//Karşılaştırma Operatörleri:
// == , != , < , > , <= , >=

//Mantıksal Operatörler:
// ! && ||
}
