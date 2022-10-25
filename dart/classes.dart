// Topics
// 1- Basic Class Usage
// 2- Inheritance
//   2.1- Abstract Class
//   2.2- Interface Class(almost)(using with implements)
//   2.3- All Examples Together About Inheritance
// 3- Static Class
// 4- Enums

/// 1- Basic Class
class ClassUsage {
  // Class Variables
  String name;

  // Constructor
  ClassUsage(this.name);
  ClassUsage.namedConstructor(this.name);

  // Method
  String newMethod() {
    return 'Method worked!';
  }
}

/// 2- Inheritance Usage
/// 2.1- Abstract Class
abstract class SuperClass {
  late String _name; // Private variable usage(It is invisible to other files)

  SuperClass({required String name}) {
    _name = name;
  }

  // Encapsulation
  String get getName => _name;
  set setName(String name) => _name = name;

  // Abstract Method
  String sayHi() => 'Hi';
}

/// 2.2- Like Interface Class
// Dart does not have interface but we can use implements keyword.
// A class who implements this class must need to override that fields and methods.
class InterfaceClass {
  String surname;
  InterfaceClass(this.surname);

  String greet() => surname;
}

// Extends and Implements Usage
class SubClass extends SuperClass implements InterfaceClass {
  @override // It comes from InterfaceClass
  String surname = 'Coban';

  SubClass({required super.name}); // It goes to abstract class's constructor

  @override // It comes from InterfaceClass
  String greet() => (_name.isNotEmpty && surname.isNotEmpty)
      ? '${super.sayHi()} $_name $surname'
      : 'Error';
}

//========================================
/// 2.3- All Examples Together About Inheritance
abstract class Person {
  String name;
  String surname;

  Person(this.name, this.surname);

  void live() {
    print('I am live.');
  }
}

/// Mixin (using with 'with keyword')
// 'on' keyword can use between mixin
mixin Walking {
  void walk() {
    print('I can walking');
  }
}

mixin Breathing {
  void breath() {
    print('I need o2');
  }
}

class HaveCar {
  late String carName;
  late String model;
  late int wheelCount;

  void drive() {
    print('I am driving');
  }
}

class Baby extends Person with Breathing {
  Baby(super.name, super.surname);
}

class Adult extends Person with Breathing, Walking implements HaveCar {
  Adult(super.name, super.surname, this.carName, this.model, this.wheelCount);

  @override
  String carName;

  @override
  String model;

  @override
  int wheelCount;

  @override
  void drive() {
    // TODO: implement drive
    print('I am adult and i have car so i can drive');
  }
}
//========================================

/// 3- Static Class
class StaticMethodClass {
  static late String name;

  static String staticMethod() => name;
}

/// 4- Enums
enum ThemeColors {
  DARK,
  LIGHT;

  // Enum Method
  String enumMethod() => '$this';
}

void main(List<String> args) {
  // Basic Class Usage
  ClassUsage obj1 = new ClassUsage('justTry');
  print(obj1.newMethod());

  // Inheritance Usage
  var obj = SubClass(name: 'Mete');
  print(obj.greet());

  // Static Method Usage(We don't need to get instance from class for using methods or variables)
  StaticMethodClass.name = 'Static Method Worked!';
  print(StaticMethodClass.staticMethod());

  // Enum Usage
  ThemeColors choosedTheme = ThemeColors.DARK;
  print(choosedTheme.enumMethod());
  switch (choosedTheme) {
    case ThemeColors.DARK:
      print('Do backgraund black and make text color white');
      break;
    case ThemeColors.LIGHT:
      print('Do backgraund white and make text color black');
      break;
    default:
  }
}
