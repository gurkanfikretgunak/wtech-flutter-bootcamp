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

class Developer extends Persona with DeveloperSkills, EducationSkills {}

class Po {
  int x = 9;
  int y = 10;

  multy() {
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
  String? storagePath;

  ImageUploader(this.filePath, storagePath);

  void imageSelector() {
    filePath = "/home/pictures";
    //dosya dizini seçildi.
    storagePath = "www.google.com/firebase/buckets";

    imagePathSelector() {
      return filePath;
    }
  }
}

void main(List<String> args) {
  var iu = ImageUploader("", "");

  var d = Developer();

  var carpma = Po().multy();
  print(carpma);

  print(Po().multy().toString());

  var dateTime = DatePickerConfig();
}
