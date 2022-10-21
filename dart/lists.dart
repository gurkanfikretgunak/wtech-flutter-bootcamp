void main(List<String> args) {
  var l1 = [
    1,
    2,
    3,
    4,
    "",
    1.2,
    [],
    {"key": "value"},
    {"value"}
  ];
  List l2 = <int>[1, 2, 3, 4, 5];
  List l3 = <String>["İbrahim", "Samet", "Aslı", "Tuğba"];
  List l4 = [1, "String", 1.2, []];
  List l6 = [1, 2, 3, ...l4];

  List users;
  List usersAdress;
  print('$l1 $l2 $l3 $l4');
}
