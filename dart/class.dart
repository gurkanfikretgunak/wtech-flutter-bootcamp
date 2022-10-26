class Personel {
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

class Developer extends Personel with DeveloperSkills, EducationSkills {}

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

class ImageUploader {
  String? filePath;
  String? storagePath;

  ImageUploader(this.filePath, this.storagePath);

  void imageSelecter() {
    imagePathSelecter() {}
  }
}

void main(List<String> args) {
  var d = Developer();
  var carpma = Po().multy();

  var dateTime =
      DatePickerConfig().viewCurrentTime(DatePickerConfig().currentDate);
  print(dateTime);

  print(carpma);

  var iu = ImageUploader("/home/pictures", "/firebase/data");
  iu.filePath;
}
