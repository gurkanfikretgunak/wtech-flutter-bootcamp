// Class with name First
class First {
  static int num = 1;
  void firstFunc() {
    print('Ahmet Aydın');
  }
}

// inherits from First class
class Second extends First {
  void secondFunc() {
    print('www.ahmetaydin.dev');
  }
}

void main() {
  // instance of First Class
  var one = First();

  // calling firstFunc()
  one.firstFunc();

  // printing static variable of class
  print(First.num);

  // instance of Second Class
  var second = Second();

  // calling firstFunc() that
  // has been inherited
  second.firstFunc();
  second.secondFunc();
}
