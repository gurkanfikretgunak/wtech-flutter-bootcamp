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

  int multiply() {
    var result = x * y;

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
  String? storagePath;

  ImageUploader(this.filePath, this.storagePath);

  static String imageSelector() {
    //imagePathSelector() {}
    return "value";
  }
  // void imageSelector() {
  //   imagePathSelector() {}
  // }
}

abstract class BaseUrl {
  BaseUrl(this.url);
  String? url;

  String get baseUrl => "https://example.com/api/";
}

class Auth extends BaseUrl {
  Auth(super.url) : super();
}

void main(List<String> args) {
  //var iu = ImageUploader("", "");
  var withStatic = ImageUploader.imageSelector();
  print(withStatic);

  var d = Developer();
  var dateTime = DatePickerConfig();

  print(Po().multiply().toString());
}
