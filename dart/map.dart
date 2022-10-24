//Map, birden fazla boyutu olan List'tir.
//1. 2 boyutlu map örneği;
//1. Map isimler = {1: "Kaan", 2: "Erkay", 3: "Altan", 4: "Emir"};

//2. Map isimler = {
 // 1: {"isim": "Kaan", "soyIsim": "Kuşcu", "yas": 23},
 //  2: {"isim": "Emir Alper", "soyIsim": "Babur", "yas": 27},
 // 3: {"isim": "Altan", "soyIsim": "Aydemir", "yas": 22}
// };

//3. Map üzerinde istenilen bölgeyi göstermek için:
// print(isimler[1]); // {isim: Kaan, soyIsim: Kuşcu, yas: 23}
// print(isimler[1]["isim"]); // Kaan

//4. Map Fonksiyonları:
// print(isimler.isEmpty); // false isEmpty: Map boş ise true verir.
// print(isimler.isNotEmpty); // true  isNotEmpty: Map boş değilse true verir.

 // print(isimler.keys); // (1, 2, 3)    keys: anahtarları listeler
//print(isimler.length); // 3 Map'in uzunluğunu verir.

//values, keys'in tersi olarak değerleri listeler.
//print(isimler.values); // ({isim: Kaan, soyIsim: Kuşcu, yas: 23}, {isim: Emir Alper, soyIsim: Babur, yas: 27}, {isim: Altan, soyIsim: Aydemir, yas: 22})


//addAll: Başka bir Map'i ekler. Aynı değerler var ise üzerine yazar.
//main() {
  //Map isimler = {
    //1: {"isim": "Kaan", "soyIsim": "Kuşcu", "yas": 23},
    //2: {"isim": "Emir Alper", "soyIsim": "Babur", "yas": 27},
    //3: {"isim": "Altan", "soyIsim": "Aydemir", "yas": 22}
  //};
  //Map yeniIsimler = {
    //4: {"isim": "Gökhan", "soyIsim": "Bingül", "yas": 26},
    //5: {"isim": "İsmail", "soyIsim": "Tunç", "yas": 22},
    //6: {"isim": "Emre", "soyIsim": "Gülşen", "yas": 23}
  //};
  //isimler.addAll(yeniIsimler);
  //print(isimler);
//
//
//
//
//}

// containsKey: Anahtarı içerip içermediğini kontrol eder. print(isimler[1].containsKey("isim")); // true
// containsValue: Değeri içerip içermediğini kontrol eder. print(isimler[1].containsValue("Kaan")); // true
// forEach:Map'in eleman sayısına göre döndü işlemi yapar. forEach fonksiyonu 2 parametre alır. 1. anahtar parametresi, 2. değer parametresidir.
// remove: Belirtilen anahtardaki değeri kaldırır. 
// isimler.remove(2);
// print(isimler);
//update: Belirtilen anahtardaki değeri günceller.updateAll = Tüm değerleri günceller.

var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

