void main(List<String> args) {
  for(int i = 0; i <= 100; i++) {
    if(i == 0) {
      continue;
    }
    if(i % 2 == 0) {
      print(i);
    }
  }

  print("\n");

  int number = 0;
  while(number <= 100) {
    if(number % 2 != 0) {
      print(number);
    }
    number++;
    if(number == 50) {
      break;
    }
  }

  print("\n");

  int value = 0;
  do{
    print("Wtech\n");
    value++;
  }while(value < 5);
}