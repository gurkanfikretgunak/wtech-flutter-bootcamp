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
  List l3 = <String>["Gurkan", "İbrahim", "Ali", "Çiğdem", "Aslı"];
  List l4 = [1, "String", 1.2, []];

  List l5 = [1, 2, 3, ...l4];

  print('$l1?[0],$l2,$l3,$l4');
}
