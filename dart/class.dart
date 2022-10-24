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

class DatePickerConfig {
  late final String? pickerUser;
  final DateTime currentDate = DateTime.now();

  DateTime viewCurrentTime() {
    return currentDate;
  }
}

class ImageUploader {
  String? filePath;
  String? storagePath;

  ImageUploader({
    this.filePath,
    this.storagePath,
  });

  static void imageSelecter() {
    imagePathSelector() {}
  }
}

void main(List<String> args) {
  var d = Developer();

  print(Poo().multy());

  var dateTime = DatePickerConfig();
  dateTime.viewCurrentTime();

  var iu = ImageUploader(filePath: '', storagePath: '');
}

class Poo {
  int x = 9;
  int y = 10;

  int multy() {
    var resault = x * y;
    print(resault);
    return resault;
  }
}
