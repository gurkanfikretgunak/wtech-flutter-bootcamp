void main(List<String> args) {
  // Değişmeyen yapılarda kullanılır enum gibi
  var s1 = {"Value1", "Value2"};
  Set s2 = {"Value1", "Value2"};

  Set s3 = <String>{"Value1", "Value2"};
  Set s4 = <dynamic>{"Value1", "Value2"};
  s4.add('123');

  print('$s1 , $s2, $s3, $s4');
}
