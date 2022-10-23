//Kısa method Fat Arrow : tek satırlık statement içeren methodlarımızı kısa bir şekilde göstermeye yarar.

void main(List<String> args) {
  sayilariTopla();
  int fark = sayilariCikar(15, 4);

  print("fark $fark");

  print("çarpım : " + sayilariCarp(12, 6).toString());

  print("Büyük olan sayı : " + maxOlaniBul(11, 8).toString());

  print("Küçük olan sayı : " + minOlaniBul(4, 13).toString());
}

void sayilariTopla() {
  int sayi1 = 8, sayi2 = 4;
  print("toplam : ${sayi1 + sayi2}");
}

int sayilariCikar(int s1, int s2) {
  return (s1 - s2);
}

int sayilariCarp(int s1, int s2) => s1 * s2;

int maxOlaniBul(int s1, int s2) => (s1 < s2) ? s2 : s1;

minOlaniBul(int s1, int s2) => (s1 < s2) ? s1 : s2;
