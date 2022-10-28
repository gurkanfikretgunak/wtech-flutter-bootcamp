class FirstExtend {
  static int no = 1;
  void firstExtFunction() {
    print('İbrahim Aydan');
  }
}

class SecondExtend extends FirstExtend {
  void secondFunction() {
    print('ibrahimaydan.com');
  }
}

void main() {
  var first = FirstExtend();

  first.firstExtFunction();
  print(FirstExtend.no);

  var second = SecondExtend();
  second.firstExtFunction();
  second.secondFunction();
}
