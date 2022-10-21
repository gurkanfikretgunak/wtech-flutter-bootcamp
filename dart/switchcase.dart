

void main(List<String> args) {
  int sayi = 1;
switch(sayi) {
  case 0:
    print('zero!');
    break; // The switch statement must be told to exit, or it will execute every case.
  case 1:
    print('one!');
    break;
  case 2:
    print('two!');
    break;
  default:
    print('choose a different number!');
}
}