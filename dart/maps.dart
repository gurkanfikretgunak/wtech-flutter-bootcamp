void main() {
// maps; key ve value olmak üzere iki parametreli dizinlerdir
//bu dizinleri tanımlarken önce key değerini tanımlıyoruz
//set ve map farkı, setlerde tek tip  var

  Map<int, String> aylar = {1: 'Ocak', 2: 'Şubat', 3: 'Mart'};

//aylar map ine yeni bir değer eklemek için
  aylar[4] = 'Nisan';

  //aylar.clear(); // içindeki değerleri siler ama aylar değişkenini sabit tutar ve yazdırdığımızda null bir ekran çıkar

  //print(aylar); map in  tam halini verir
  //print(aylar[1]); // key değeri 1 olan value değerini verir
  print(aylar.keys); //sadece key değerlerini yazdırmak istersek
  print(aylar.values); // sadece değerleri yazdırmak istersem
  print(aylar[4]);

  Map<String, int> plakalar = {"Artvin": 08, "Ankara": 06, "İstanbul": 34};
  plakalar["Kırklareli"] = 39;

  for (var item in plakalar.entries) {
    print("Key: ${item.key}, value: ${item.value}");
  }

  //print(plakalar);
  //print(plakalar["Artvin"]);
}
