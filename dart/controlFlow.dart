//if else
ifElse(int not) {
  if (not < 0) {
    print("Pozitif sayı giriniz.");
  } else if (not < 50) {
    print("Dersten kaldınız.");
  } else if (50 <= not && not < 60) {
    print("Notunuz:FF");
  } else if (60 <= not && not < 70) {
    print("Notunuz:DD");
  } else if (70 <= not && not < 80) {
    print("Notunuz:CC");
  } else if (80 <= not && not < 90) {
    print("Notunuz:BB");
  } else if (90 <= not && not < 100) {
    print("Notunuz:BA");
  } else if (not == 100) {
    print("Notunuz:AA");
  } else {
    print("Geçersiz not girdiniz.");
  }
}

//for
printName(String name) {
  for (var i = 0; i < name.length; i++) {
    print(name[i]);
  }
}

//for in
printList(List list) {
  for (var name in list) {
    print(name);
  }
}

//forEach
printforEach(List list) {
  list.forEach((element) {
    print(element);
  });
}

//do while
doWhile(int number) {
  do {
    if (number % 2 == 0) {
      print(number);
    }
    number++;
  } while (number < 10);
}

//break
printBreak(String name) {
  for (var i = 0; i < name.length; i++) {
    if (i == 3) {
      break;
    }
    print(name[i]);
  }
}

//continue
printContinue(String name) {
  for (var i = 0; i < name.length; i++) {
    if (i == 3) {
      continue;
    }
    print(name[i]);
  }
}

void main(List<String> args) {
  List<String> names = ["Gökalp", "Alpcan", "Akoğlu"];
  ifElse(100);
  printName("Gökalp");
  printList(names);
  printforEach(names);
  doWhile(10);
  printBreak("Gökalp");
  printContinue("Gökalp");
}
