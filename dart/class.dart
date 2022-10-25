import 'dart:math';

class Position {
  int x = 0;
  int y = 0;

  double distanceTo(Position other) {
    var dx = other.x - y;
    var dy = other.y - y;
    return sqrt(dx * dx + dy * dy);
  }
}

main() {
  var origin = new Position()
    ..x = 0
    ..y = 0;

  var p = new Position()
    ..x = -5
    ..y = 6;
  print(origin.distanceTo(p));
}

class Persona {
  String? gender;
  int? age;
  int? countryCode;
}

class DeveloperSkills {
  List<String>? softwareSkills;
}

class EducationSkills {
  int? succesScore;
}

class Developer extends Persona with DeveloperSkills, EducationSkills {}

class DatePickerConfig {
  late final String? pickerUser;
  final DateTime cuurentDate = DateTime.now();
  DateTime viewCurrentTime() {
    return cuurentDate;
  }
}
