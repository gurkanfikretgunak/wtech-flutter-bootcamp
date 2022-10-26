class Persona {
  String? gerder;
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
//Developer sınıfı özelliklerini Persona sınıfından alsın
//extend->miras almak
//birbirinden miras alarak developer sınıfını inşa ediyoruz

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
  late String? pickUser;
  final DateTime currentDate = DateTime.now();

  DateTime viewCurrentTime(DateTime currentDate) {
    var result = currentDate;

    return result; // datime i string olarak kullanmak istersen geriye return result.toString(); döndürmen gerekir
  }
}

class ImageUploader {
  String? filePath;
  String? storagePath;
// String? filePath, storagePath;

//consractor yapısı(imageSelecter in içinde kullanabileceğiz)
  ImageUploader(this.filePath, this.storagePath);
  static imageSelector() {
    imagePathSelector() {}
  }

  void main(List<String> args) {
    var iu = ImageUploader.imageSelector();
    iu.filePath;

    var d = Developer();
    var dateTime = DatePickerConfig();

    print(Po().multy().toString());
  }
}
