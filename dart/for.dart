void main(List<String> args) {
  List list1 = [
    {
      "name": "İbrahim",
      "surname": "Aydan",
      "email": "ibrahimaydandev@gmail.com",
    },
    {"name": "Mehmet Akif", "surname": "Narçın"},
    {
      "name": "Tuğba",
      "surname": "Aydan",
      "email": "tgba.aydn@gmail.com",
    },
    {
      "name": "Meltem",
      "surname": "Yıldız",
      "email": "meltemyildizn@gmail.com",
    },
    {
      "name": "Feyza",
      "surname": "Çiçek",
    }
  ];

  for (var i in list1) {
    print(i);
  }
  for (var i in list1) {
    print(i.values);
  }
  for (var i in list1) {
    print(i.keys);
  }

  for (var i = 0; i < list1.length; i++) {
    print(list1[i]["name"]);
  }

  List<int> numbersList = [11, 2, 5, 412, 333, 777];
  bool isProcess = true;
  while (isProcess) {
    for (var i in numbersList) {
      if (i % 2 == 0) {
        print("$i çifttir ");
      } else {
        print("$i Tektir");
      }
    }
    isProcess = false;
  }
  //continue-break
  List<int> sayilar = [44, 4231, 4321, 5321, 5312, 5312];
  for (var i in sayilar) {
    if (i == 44) continue;
    print("\nContinue Result: $i");
  }
  print("Break Result:");
  for (var i in sayilar) {
    print("$i");
    if (i == 5312) break;
  }
  //assert
  String name = "İbrahim";
  assert(name != "Aydan");
  print("\nInput is not correct");
}
