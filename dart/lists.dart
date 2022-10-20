void main(List<String> args) {
  List l1 = [
    1, // int
    1.2, // Double
    "", // String
    [], // List
    {"key": "value"}, // Map
    {"key"} // Set
  ];

  List l2 = <int>[1, 2, 3, 4, 5]; // Type Casting
  List l3 = <String>["Ahmet", "Mehmet", "Cemal"];

  print(l1[4]["key"]);
}
