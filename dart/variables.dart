void main(List<String> args) {
  //Dart programlama dilinde 5 ana veritipi vardır.
  //Number, String, Boolean, List, Map
  //Integer
  int sayi = 10;
  //Double
  double sayi1 = 5.21;
  //String
  String metin = "Merhaba";
  //Boolean
  bool online = true;
  //List
  List isimler = ["kaan", "erkay", "altan"];
  //Map
  Map kisi = {"isim": "Esra", "soyisim": "Ertsak"};
  //Var ile atama yaparsak değişkenin tipini belirmemiz gerekmez. Yorumlayıcı yorumlama esnasında verilen değere göre değişkenin tipini belirler. var terimi ile kullanılır.
  var degisken1 = "metin";
  var degisken2 = 12344;
  var degisken3 = false;
  //dynamic
  //Dynamic veri tipi değerin tipinin yorumlayıcı tarafından algılanmasını sağlar. Var'dan farkı içerisine başka türde değer atandığında değişken yeni atanan değerin tipine dönüşür. dynamic terimi ile kullanılır.
}

dynamic degisken1 = "metin";
dynamic degisken2 = 231123;
dynamic degisken3 = true;
