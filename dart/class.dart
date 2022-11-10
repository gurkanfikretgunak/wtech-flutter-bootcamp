// ignore_for_file: public_member_api_docs, sort_constructors_first

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

class Developer extends Persona with DeveloperSkills, EducationSkills {}

class Po {
  int x = 9;
  int y = 10;

  int multy() {
    var result = x * y;
    print(result);
    return result;
  }
}

class DatePickerConfig {
  late final String? pickerUser;
  final DateTime currentDate = DateTime.now();

  DateTime viewCurrentTime(DateTime currentDate) {
    var result = currentDate;
    return result;
  }
}

class ImageUploader {
  String? filePath;
  String? stroagePath;

  ImageUploader({
    this.filePath,
    this.stroagePath,
  });
}

void imageSelecter() {
  imagePathSelector() {}
}

void main(List<String> args) {
  var d = Developer();

  print(Po().multy());
  DatePickerConfig datetime = DatePickerConfig();
  datetime.viewCurrentTime(new DateTime.now());

  var iu = ImageUploader(filePath: '', stroagePath: '');
}

