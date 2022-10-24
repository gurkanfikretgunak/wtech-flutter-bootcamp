import 'dart:js_util';

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
  String? pickerUser;
  final DateTime currentDate = DateTime.now();

  DateTime viewCurrentTime(DateTime currentDate) {
    var result = currentDate;
    return result;
  }
}

class ImageUploader {
  String? filePath;
  String? stroagePath;

  ImageUploader(this filePath, this stroagePath);


 static  ImageSelecter(){
   imagePathSelecter();
  }
}

void main(List<String> args) {
  
  var iu = ImageUploader("filePath", "stroagePath");

  var d = Developer();
  var datetime = DatePickerConfig();
  print(Po().multy().toString());
}
