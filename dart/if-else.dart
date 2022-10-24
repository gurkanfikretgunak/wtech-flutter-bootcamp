void main() {
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
