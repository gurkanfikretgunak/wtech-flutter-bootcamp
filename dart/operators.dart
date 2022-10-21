// Arithmetic Operators and Equality and relational operators
class ArithmeticOperations {
  static double sum({required double num1, required double num2}) =>
      num1 + num2;
  static double subtract({required double num1, required double num2}) =>
      num1 - num2;
  static double multiply({required double num1, required double num2}) =>
      num1 * num2;
  static dynamic divide({required double num1, required double num2}) =>
      num2 != 0 ? num1 / num2 : 'Zero Error';
  static dynamic divideAndSendOnlyIntegerPart(
          {required double num1, required double num2}) =>
      num2 != 0 ? num1 ~/ num2 : 'Zero Error';
  static dynamic modulo({required double num1, required double num2}) =>
      num1 % num2;
}

// Type test operators
void typeTestOperators() {
  dynamic name = 'Mete';
  if (name is String) {
    print('$name is a String Object');
  } else {
    print('$name is not a String Object');
  }
}

// Assignment operators
void assignmentOperators() {
  String? nullVariable;
  print('$nullVariable');

  nullVariable ??= 'Not null now';
  print('$nullVariable');
}

// Bitwise and shift operators & Ternary operator usage(Conditional expressions)
void bitwiseAndShiftOperators() {
  print((4 % 2 == 0 && true) ? 'True' : 'False');
}

// Cascade notation
class ClassForCascadeNotation {
  late String name;
  late String gender;
  void writeMethod() => print('Welcome \n Name: $name \n Gender: $gender');
}

void cascadeNotation() {
  ClassForCascadeNotation()
    ..gender = 'Male'
    ..name = 'Mete'
    ..writeMethod();
}

void main(List<String> args) {
  // Arithmetic Operations
  print('Sum: ${ArithmeticOperations.sum(num1: 2, num2: 3)}');
  print('Sum: ${ArithmeticOperations.subtract(num1: 2, num2: 3)}');
  print('Sum: ${ArithmeticOperations.multiply(num1: 2, num2: 3)}');
  print('Sum: ${ArithmeticOperations.divide(num1: 6, num2: 3)}');
  print(
      'Sum: ${ArithmeticOperations.divideAndSendOnlyIntegerPart(num1: 6, num2: 3)}');
  print('Sum: ${ArithmeticOperations.modulo(num1: 6, num2: 5)}');

  typeTestOperators();

  assignmentOperators();

  bitwiseAndShiftOperators();

  cascadeNotation();
}
