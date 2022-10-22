//Arithmetic operators
class Arithmetic {
  add({required double s1, required double s2}) => print("Sum => ${s1 + s2}");
  subtract({required double s1, required double s2}) =>
      print("Subtract => ${s1 - s2}");
  multiply({required double s1, required double s2}) =>
      print("Multiply => ${s1 * s2}");
  divide({required double s1, required double s2}) =>
      print("Divide => ${s1 / s2}");
  remainder({required double s1, required double s2}) =>
      print("Remainder => ${s1 % s2}");
}

//Equality and relational operators
equality({required double s1, required double s2}) {
  print("Equality => ${s1 == s2}");
  print("Not Equality => ${s1 != s2}");
  print("Greater than => ${s1 > s2}");
  print("Greater than or equal => ${s1 >= s2}");
  print("Less than => ${s1 < s2}");
  print("Less than or equal => ${s1 <= s2}");
}

//Type test operators
typeTest({required var s1, required var s2}) {
  print("Is => ${s1 is int}");
  print("Is not => ${s1 is! int}");
}

//Assignment operators
void assignment() {
  String name = "Melih";
  String? surname;
  print(surname);
  surname ??= "Celik";
  print("${name} ${surname}");
}

//Logical operators
void logical({required bool done, required int count}) {
  if (!done && (count == 0 || count == 3)) {
    print("Not done and count is 0 or 3");
  } else {
    print("Done");
  }
}

//Bitwise and shift operators
void bitwiseAndShift() {
  var value = 0x22;
  var mask = 0x0f;
  print("Bitwise AND => ${value & mask}");
  print("Bitwise OR => ${value | mask}");
  print("Bitwise XOR => ${value ^ mask}");
  print("Bitwise left shift => ${value << 1}");
  print("Bitwise right shift => ${value >> 1}");
}

//Conditional expressions
void conditionalExpressions({required bool isDone}) {
  var result = isDone ? "Done" : "Not Done";
  print(result);
}

//Cascade notation
void cascadeNotation() {
  var sb = StringBuffer();
  sb
    ..write('Hello')
    ..write(' ')
    ..write('World')
    ..write('.');
  print(sb);
}

void main(List<String> args) {
  Arithmetic arithmetic = Arithmetic();
  arithmetic.add(s1: 4, s2: 5);
  arithmetic.subtract(s1: 8, s2: 5);
  arithmetic.multiply(s1: 4, s2: 5);
  arithmetic.divide(s1: 10, s2: 5);
  arithmetic.remainder(s1: 6, s2: 5);
  equality(s1: 6, s2: 5);
  typeTest(s1: 6, s2: 5);
  assignment();
  logical(done: false, count: 0);
  bitwiseAndShift();
  conditionalExpressions(isDone: true);
  cascadeNotation();
}
