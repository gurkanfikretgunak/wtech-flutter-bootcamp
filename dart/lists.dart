void main(List<String> args) {
  //List'leri var olarak tanımlamak önerilmez.
  var l1 = [
    1,
    2,
    3,
    4,
    "",
    1.2,
    {"key": "value"},
    [],
  ];

  List l2 = <int>[1, 2, 3];
  List l3 = <String>["Gürkan", "Ayşe", "Elif"];
  List l4 = [1, "String", 1.2, []];
  List l5 = [1, 2, 3, ...l4]; //Bir listeye başka listeyi eklemek
  List users;
  List usersAddress;

  //****** */ Listenin her elemanına karakter eklemek için kullanılabilir.
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

  var list3 = [47, 3, 25];
  try {
    for (var item in list3) {
      if (item < 10) {
        list3.remove(item);
        print(list3);
      }
    }
  } catch (e) {
    print('error');
  }
}
