main(List<String> args) {
  // for ile çift sayıları bulma
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print("$i");
    }
  }
  // for ile liste elemanlarını okuyalım
  List isimListesi = ["beyza", "aktürk", "tiana"];
  for (String gecici in isimListesi) {
    print("$gecici");
  }
  //While döngüsü ile saç değerlerini okuyalım
  int sayac = 0;
  while (sayac < 3) {
    print("Okunan sayaç değeri $sayac");
    sayac++;
  }

  // For içi if kullanımı. Eğer 5 den büyükse çıkar.
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i değeri: $i");
  }

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("continue i değeri: $i");
    } else {
      print("i değeri 5den küçük oldugu için herhangi bir işlem yapılmayacak");
      continue;
    }
  }
}
