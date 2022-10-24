
class Person{
  String? gender;
  int? age;
  int? countryCode;
}


class DeveloperSkills{
  List<String>? softwareSkills;
}

class EducationSkills{
  int? successScore;
}

class Developer extends Person with DeveloperSkills,EducationSkills{  

}

class DataPickerConfig{

  String? pickerUser;

  DateTime currentDate = DateTime.now();

  String viewCurrentTime(DateTime currentDate){
    var result = currentDate;
    print(currentDate);
    return result.toString();
  }
}



class ImageUploader{
  String? filePath;
  String? storagePath;

  ImageUploader(this.filePath,this.storagePath);
  imageSelector(){
    filePath = "/home/pictures";

    storagePath = "www.google.com/firebase/buckets";
  }

}



void main(List<String> args) {
  
  var dateTime = DataPickerConfig();
  
  var iu = ImageUploader("filePath", "storagePath");
  print(iu.filePath);
}