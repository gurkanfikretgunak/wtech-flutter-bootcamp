void main(List<String> args) {
  //logical operators
  bool done = false;
  int col = 23;

  if (!done && (col == 0 || col == 3)) {
    // ...Do something...
  }

  /* int sayi1 = 2;
  sayi1++;
  print(sayi1);

  int sayi2 = 5;
  sayi2--;
  print(sayi2);*/

  // Dart Tennory üçlü operator kısa yazımı
  int sayi1 = 5;
  int sayi2 = 10;
  int? sayi3;
  //boş bırakılamaz, sonra değer vereceğimiz için sen null olabilirsin dedik ve soru işareti koyduk

  if (sayi1 < sayi2) {
    sayi3 = sayi2;
  } else {
    sayi3 = sayi1;
  }
  print(sayi3);
  //normal if ile yazılmış hali

  sayi1 < sayi2 ? sayi3 = sayi2 : sayi3 = sayi1;
  print(sayi3);
  //kısa gösterim ile yazılmış hali

  sayi3 = sayi1 < sayi2 ? sayi2 : sayi1;
  print(sayi3);
  //kısa gösterim ile yazılmış hali, hepsi aynı sonucu verecektir.
}
