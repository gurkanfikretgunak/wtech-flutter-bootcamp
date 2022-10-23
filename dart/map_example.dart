/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */

main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["bursa"]);

  Map<String, dynamic> beyza = {"soyad": "aktürk", "yas": 23, "bekarMi": true};

  List sayilar = [0, 1, 2];

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2['yas'] = 55;
  print(beyza['yas']);

  for (String oankiAnahtar in beyza.keys) {
    print(oankiAnahtar);
    print(beyza[oankiAnahtar]);
  }

  for (dynamic deger in beyza.values) {
    print(deger);
  }

  for (var element in beyza.entries) {
    print("Key : ${element.key} değeri : ${element.value}");
  }

  if (beyza.containsKey('yas')) {
    print("Bulunan yaş değeri ${beyza['yas']}");
  }

  print(beyza);
}
