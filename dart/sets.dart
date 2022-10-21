void main(List<String> args) {
  var names = {"Value", "Value2", "Value3"};
  Set s2 = {"Value1", "Value2"};

  Set s3 = <String>{"Value1", "Value2"};
  Set s4 = <dynamic>{"Value1", 23};

  print("$names,$s2,$s3,$s4");
}
