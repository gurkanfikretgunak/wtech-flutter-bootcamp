tryCatch(int bolunen, int bolen) {
  try {
    int sayi = bolunen ~/ bolen;
    print(sayi);
  } catch (e) {
    print("Hata" + e.toString());
  } finally {
    print("Her zaman burası çalışsın.");
  }
  print("Try catch'den çıkıldı");
}

void main(List<String> args) {
  tryCatch(10, 12);
}
