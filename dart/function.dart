void NewPrint() {
  print("Çağrılan fonksiyon");
}

num toplam(num x, num y) {
  return x + y;
}

main() {
  NewPrint();
  var sonuc = toplam(18, 21);
  print(sonuc);
}
