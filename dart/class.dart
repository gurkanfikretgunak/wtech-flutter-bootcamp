class persona {
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

class Developer extends persona with DeveloperSkills, EducationSkills {}

class po {
  int x = 9;
  int y = 10;

  int multy() {
    var result = x + y;
    return result;
  }
}

class ImageUploader {
  String? filePath;
  String? storagePath;

  ImageUploader(this.filePath, this.storagePath);

  imageSelecter() {}
}
