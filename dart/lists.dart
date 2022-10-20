void main(List<String> args) {
  var l1 = [
    1,
    2,
    3,
    4,
    "",
    1,
    2,
    [],
    {"key": "value"},
    {"value"}
  ];

  List l2 = <int>[1, 2, 3, 4, 5];
  List l3 = <String>["Onur", "Pelin", "Mahir", "Hüseyin", "Ulaş"];
  List l4 = [1, "String", 1.2, []];

  print('$l1,  $l2, $l3, $l4');
}
