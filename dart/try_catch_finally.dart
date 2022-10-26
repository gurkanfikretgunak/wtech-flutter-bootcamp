void main(List<String> args) {
  try {
    int sayi = 10 ~/ 2;
    print(sayi);
  } catch (e) {
    print("hata meydana geldi " + e.toString());
  } finally {
    print("her halükarda çalışır, hata çıksada, çıkmasada");
  }
  print("devam eden kod");
}
