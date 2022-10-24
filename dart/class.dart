class Persona {
  String? gender;
  int? age;
  int? countryCode;
}

class DeveloperSkills {
  List<String>? softwareSkills;
}

class EducationSkills {
  int? SuccessScore;
}

// Developer da bir insandır bu yüzden insan sınıfını miras alır
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

//sınıflarda defult değerler tanımlanabilir.
class DatePickerConfig {
  String? pickerUser;
  DateTime currentDate = DateTime.now();

  viewCurrentTime(DateTime currentDate) {
    print(currentDate);
  }
}

class ImageUploader {
  String? filePath;
  String? strgongePath;

  ImageUploader(this.filePath, this.strgongePath);

  static String imageSelecter() {
    return "value";
  }
}

//materaial dev
//static metodlar tanımlanınca parametre kullanılmasını zorunlu kılar.

class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main(List<String> args) {
  var d = Developer();
  var dateTime = DatePickerConfig();
  var iu = ImageUploader("filePath", "strongePath");
  iu.filePath;
  /*var carpma = Po().multy();
  print(carpma);
  tek satırda yapmak da mümkün dart ile
  */
  print(Po().multy());
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
}
