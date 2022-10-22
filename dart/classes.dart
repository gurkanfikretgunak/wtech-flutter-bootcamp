/// Basic Class
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

// Inheritance Usage
/// Abstract Class
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

/// Interface Class
class InterfaceClass {
  String surname;
  InterfaceClass(this.surname);

  String greet() => surname;
}

/// Extends and Implements Usage
class SubClass extends SuperClass implements InterfaceClass {
  @override // It comes from InterfaceClass
  String surname = 'Coban';

  SubClass({required super.name}); // It goes to abstract class's constructor

  @override // It comes from InterfaceClass
  String greet() => (_name.isNotEmpty && surname.isNotEmpty)
      ? '${super.sayHi()} $_name $surname'
      : 'Error';
}

// Static Method Usage with Class
class StaticMethodClass {
  static late String name;

  static String staticMethod() => name;
}

// Enums
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
