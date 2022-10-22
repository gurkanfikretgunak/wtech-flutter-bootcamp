void main(List<String> args) {
  var s1 = null;
  Set s2 = {"Value3", "Value4"};

  Set s3 = <String>{"Value1", "Value2"};
  Set s4 = <dynamic>{"Value1", 23};
  s4.add("Value3");
  print('$s1 $s2 $s3 $s4');
  //Spread and null-aware spread operators
  Set s5 = {...?s1, ...s2};
  print(s5);
}
