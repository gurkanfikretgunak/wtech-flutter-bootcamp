// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  String? name;
  String? gender;
  int? age;
  int? countryCode;
}

class Developer extends Person with DeveloperSkills, EducationSkills {}

class DeveloperSkills {
  List<String>? softSkills;
}

class EducationSkills {
  int? successScore;
}

class DatePickerConfig {
  String? pickerUser;
  final DateTime currentDate = DateTime.now();
  viewCurrentDate() => print(currentDate);
}

class ImageUploader {
  String? filePath, storagePath;
  ImageUploader({this.filePath, this.storagePath});
  void imageSelector() {
    return print("Image selected from $filePath and uploaded to $storagePath");
  }

  static String staticMethod() {
    return "This is a static method";
  }
}

class Triangle {
  int? sideA, sideB, sideC;
  Triangle({this.sideA, this.sideB, this.sideC});
  int get perimeter => sideA! + sideB! + sideC!;
}

abstract class BaseUrl {
  String url;
  BaseUrl(this.url);
  String get baseUrl;
}

class Auth extends BaseUrl {
  Auth(String url) : super(url);

  @override
  String get baseUrl => url + "/auth";
}

void main(List<String> args) {
  var developer = Developer();

  var time = DatePickerConfig();
  time.viewCurrentDate();

  var image = ImageUploader(filePath: '/home/pictures', storagePath: '/home/storage');
  image.imageSelector();

  var static = ImageUploader.staticMethod();
  print(static);

  var triangle = Triangle(sideA: 3, sideB: 4, sideC: 5);
  print(triangle.perimeter);

  var auth = Auth('https://example.com/api');
  print(auth.baseUrl);
}
