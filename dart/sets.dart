void main(List<String> args) {
  // set liste yapısıdır.
  //aynı elemandan bir tane eklenebilir olması ve elemanları içerisine karışık atması özelliği ile listelerden ayrılırlar

  Set<dynamic> ornek1 = {1, 2, 3, "emine", true};
  Set<dynamic> ornek2 = {1, 1, 1, 2, 2, 3, "emine", true, 5};
  Set<dynamic> ornek3 = Set.from([]); // bu tanımlama ile ekleme de yapılabilir
  ornek1.add(22); // ekleme yapmak için

  ornek1.addAll(ornek2);
  print(ornek1);
}
