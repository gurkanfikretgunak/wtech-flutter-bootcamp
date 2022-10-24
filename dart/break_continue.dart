void main(List<String> args) {
  int counter = 10;

  while (true) {
    print('$counter ');

    if (counter == 5) break;
    counter--;
  }

  print('************************************');

  counter = 10;

  while (counter > 0) {
    counter--;
    if (counter > 5) continue;
    print('$counter');
  }
}
