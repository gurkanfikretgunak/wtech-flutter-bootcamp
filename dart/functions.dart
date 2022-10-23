import 'strings.dart';

void main(List<String> args) {
  print(factorial(6));
  DortIslem().topla();
}

var dort = DortIslem();
factorial(number) {
  if (number <= 0) {
    return 1;
  } else {
    return (number * factorial(number - 1));
  }
}
