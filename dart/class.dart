


class Persona{
  String? gender;
  int? age;
  int? countryCode;

}

class DeveloperSkills{
  List<String>? softwareSkills;
}

class EducationSkills{
  int? SuccessScore;

}

class Developer extends Persona with DeveloperSkills,EducationSkills{

}

class Po{
  int x = 9;
  int y = 10;

  int multy(){
    var result=x*y;
    print(result);
    return result;
  
  }
}

class DatePickerConfig{
  late String? pickerUser;
  final DateTime currentDate = DateTime.now();
  // sabit kalacaksa const değisebilirse final Date değişebildiği için const kullanamazsın burda
  // pickerUser final kullanamazsın çünkü default degeri yok
  DateTime viewCurrentTime(DateTime currentDate){
    var result = currentDate;
    return result;
  }
}

class ImageUploader{
  String ?filePath;
  String ?storagePath;

  ImageUploader(this.filePath,this.storagePath);


  static String imageSelecter(){
    
    return "value";
  }

}

abstract class BaseUrl{
  String? url;

  String get baseUrl => "https://example.com/api/";

}

class Auth extends BaseUrl{
  
  registerUser(){}
}
void main(List<String> args) {

  var iu= ImageUploader("", "");
  iu.filePath;


  var withStatic = ImageUploader.imageSelecter();
  print(withStatic);
  var d = Developer();
  var dateTime = DatePickerConfig();

  print(Po().multy().toString());

}