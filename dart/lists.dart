void main(List<String> args) {
  var l1 = [
    1,
    2,
    3,
    "",
    1.2,
    {"value"}
  ];

  List l2 = [1, 2, 3, 4];
  List l3 = <String>["a", "b", "c"];
  List l4 = [];
  List l5 = [1, 2, 3, ...l4];
  print('$l4,$l2,$l3,$l1');
}
