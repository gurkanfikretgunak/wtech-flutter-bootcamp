void main(List<String> args) {
  List list = [
    {
      "name": "Ahmet",
      "surname": "Aydın",
      "email": "ahmttyydn@gmail.com",
      "website": "www.ahmetaydin.dev"
    },
    {"name": "Mehmet", "surname": "Kırgın"},
    {
      "name": "Nermin",
      "surname": "Türk",
      "email": "nrmntrk@gmail.com",
    },
    {
      "name": "Gökhan",
      "surname": "Ataş",
      "email": "atasgkhn@gmail.com",
    },
    {
      "name": "Rumeysa",
      "surname": "İlgaz",
    },
  ];

//for loops
  for (var i in list) {
    print(i);
  }

  //for loops classic version and use of operators
  for (var i = 0; i < list.length; i++) {
    if (list[i]["name"] == "Ahmet") {
      print(list[0]["name"]);
    }
  }

  //if else & while & for loops mixed use
  List<int> listNumbers = [5, 8, 545, 754, 1515, 415654];
  bool isProcess = true;
  while (isProcess) {
    for (var i in listNumbers) {
      if (i % 2 == 0) {
        print("$i sayısı çifttir ");
      } else {
        print("$i sayısı Tektir");
      }
    }
    isProcess = false;
  }
}
