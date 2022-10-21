void main(List<String> args) {
  Set s1 = {'Value1', 'Value2'};
  Set s2 = <String>{'Value1', 'Value2'};
  Set s3 = <dynamic>{'Value1', 1, ' '};
  print('$s1,$s2,$s3');

  s3.add('New value');
  print('$s1,$s2,$s3');

  // Spread operator
  Set s4 = {'Spread new value', ...s3};

  print(s4);
}
