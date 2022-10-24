class Personel {
  String? gender;
  int? age;
  int? countryCode;
}

class DeveloperSkills {
  int? successScore;
}

class Developer extends Personel with DeveloperSkills {}

class Po {
  int x = 9;
  int y = 10;

  multy() {
    var result = x * y;

    return result;
  }
}

class DatePickerConfig {
  String? pickerUser;
  DateTime currentDate = DateTime.now();

  DateTime viewCurrentTime(DateTime currentDate) {
    var result = currentDate;
    return result;
  }
}

void main(List<String> args) {
  var d = Developer();
  var carpma = Po().multy();

  var dateTime =
      DatePickerConfig().viewCurrentTime(DatePickerConfig().currentDate);
  print(dateTime);

  print(carpma);
}
