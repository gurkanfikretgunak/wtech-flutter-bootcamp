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
  List l5 = [1, 2, 3, ...l4];
  List users;
  List usersAddress;

  print('$l1,$l2$l3$l4');
}
