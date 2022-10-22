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

  for (var i in list) {
    print(i);
  }
}
