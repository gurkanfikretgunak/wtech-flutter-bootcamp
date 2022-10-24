/*
  Cascade aynı nesne üzerinde birden çok işlem yapmak istendiğinde kullanılır. 
*/

class Sample {
  var a;
  var b;
  void showA(x) {
    this.a = x;
  }

  void showB(y) {
    this.b = y;
  }

  void printValues() {
    print(this.a);
    print(this.b);
  }
}

void main() {
  Sample sampleOne = new Sample();
  sampleOne.showA(2);
  sampleOne.showB(3);
  sampleOne.printValues();

  Sample sampleTwo = new Sample();
  sampleTwo
    ..showA(2)
    ..showB(3)
    ..printValues();
}
