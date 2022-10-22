//If and else
isEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

//For loops
printNumbers(int number) {
  for (var i = 1; i <= number; i++) {
    print(i);
  }
}

//For-in loops
printList(List list) {
  for (var item in list) {
    print(item);
  }
}

//While loops
printNumbersWhile(int number) {
  var i = 1;
  while (i <= number) {
    print("while $i");
    i++;
  }
}

//Do-while loops
printNumbersDoWhile(int number) {
  var i = 1;
  do {
    print("do while $i");
    i++;
  } while (i <= number);
}

//break stops the loop
printNumbersBreak(int number) {
  for (var i = 1; i <= number; i++) {
    if (i == 5) {
      break;
    }
    print("break $i");
  }
}

//continue skips the current iteration and continues with the next one
printNumbersContinue(int number) {
  for (var i = 1; i <= number; i++) {
    if (i == 5) {
      continue;
    }
    print("continue $i");
  }
}

void main(List<String> args) {
  isEvenOrOdd(2);
  printNumbers(10);
  List<String> animals = ['cat', 'dog', 'bird'];
  printList(animals);
  printNumbersWhile(4);
  printNumbersDoWhile(4);
  printNumbersBreak(10);
  printNumbersContinue(10);
}
