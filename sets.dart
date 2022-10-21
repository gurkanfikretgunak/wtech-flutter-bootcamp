void main(List<String> args) {
  var names = {"value1", "val"};
  Set s2 = {"value1", "val"};
  Set s3 = <String>{"value1", "val"};

  Set s4 = <dynamic>{"value1", 23};

  print("$s4,$s3,$s2");
}
