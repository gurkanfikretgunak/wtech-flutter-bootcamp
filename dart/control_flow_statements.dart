void main(List<String> args) {
  List list = [
    {
      "name": "Ahmet",
      "surname": "Tanrıkulu",
      "email": "can_tanrikulu@icloud.com",
    },
    {"name": "Utku", "surname": "Gedik"},
    {
      "name": "Mustafa",
      "surname": "Karatay",
      "email": "mstfkrty@gmail.com",
    },
    {
      "name": "Burak",
      "surname": "Kırgız",
      "email": "burakhanhazretleri@gmail.com",
    },
  ];

  for (var i in list) {
    if (i["name"] == 'Ahmet') {
      print(i["email"]);
    } else {
      print("ifin içine girmedi");
    }

    print(i["name"]);
  }
}
