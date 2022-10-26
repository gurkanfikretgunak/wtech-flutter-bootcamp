import 'dart:collection';

class Persona {
  String? gender;
  İnt? age;
  İnt? countryCode;

}

class Developerskills {
  List<String>? softwareSkills;

}

class EducationSkills {
  int? succesScore;

}

class Developer extends Persona with DeveloperSkills, EducationSkills {}

class Po {
  int x = 9;
  int y = 10;

  int multiply() {
    var result = x * y;

    return result;

  }

class DatePickerConfig {
  String? pickerUsers;
  final DateTime currentDate = DateTime.now();

  DateTime viewCurrentTime(DateTime currentDate) {
    var result = currentDate;
    return result;

  }
}
class ImageUploader {
  String? filePath;
  String? storeagePath;

  ImageUploader (this.filePath, this.storagePath);
  
  static String imageSelector() {
    //imagePathSelector() {}
    return "value";

  }
  //void imageSelector () {
  //  imagePathSelector () {}
  // }
  }

  abstract class BaseUrl {
    BaseUrl (this.url);
    String? url;

    String get baseUrl => "https://example.com/api/";

  }

  class Auth extends BaseUrl {
    Auth(super.url) : super();

  }
  void main(List<String> args) {
    //var iu = ImageUploader.imageSelector();
    var withStatic = ImageUploader.imageSelector();
    print(withStatic);
  

  var d = Developer();
  var dateTime = DatePickerConfig();

  print(Po().multiply().tosString());
  
  }