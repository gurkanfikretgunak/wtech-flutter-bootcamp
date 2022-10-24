void main(List<String> args) {
  int value1 = 10;
  int value2 = 30;

  int value3 = value2;
  value1 += value3;
  value2 -= value3;
  value3 *= value1;
  //value1 ~/= value2;

  print('$value1  $value2  $value3');
}
