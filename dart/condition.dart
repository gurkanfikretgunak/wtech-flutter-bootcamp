void main(List<String> args) {
  if (Employee is! Person) {
    print("Employee");
  }

  String buttonColors = "Pink";
  bool isClick = true;

  isClick ? buttonColors = "Blue" : null;
  print(buttonColors);
}

class Employee extends Person {}

class Person {}
