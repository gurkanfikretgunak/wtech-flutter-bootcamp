class Persona {
  String? gender;
  int? age;
  int? countryCode;
}

class DeveloperSkills {
  List<String>? softwareSkills;
}

class EducationSkills {
  int? successScore;
}

class Developer extends Persona with DeveloperSkills, EducationSkills {
  
}

class Po {
  int x = 9;
  int y = 10;

  int multiply() {
    var result = x * y;
    print(result);
    return result;
  }
}

class DatePickerConfig {
  String? pickerUser;
  final DateTime currentUser = DateTime.now();

  DateTime viewCurrentTime(DateTime currentDate) {
    var result = currentDate;
    return result;
  }
}

void main(List<String> args) {
  var d = Developer();
  var dateTime = DatePickerConfig();
  print(Po().multiply().toString());
}