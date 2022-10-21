void main(List<String> args) {
  var l1 = [
    1,
    2,
    3,
    "",
    [],
    {"key": "value"},
    {"value"}
  ];
  List l2 = <String>["Gökalp", "Melih", "Mete"];
  List l3 = <int>[1, 2, 3, 4, 5];
  List l4 = [1, "String", 1.2, []];

  List l5 = [1,2,3,...l4];//listeleri birbirine bağlama

  print("$l1,$l2,$l3,$l4,$l5");
}
