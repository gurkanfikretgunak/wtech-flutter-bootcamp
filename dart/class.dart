class Persona {
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
//extends burada personanın içeriğini developera koydu.
class Developer extends Persona with DeveloperSkills, EducationSkills {
  
}

class Po {
  int x = 9;
  int y = 10;

  int multy(){

    var result = x*y;
    print(result);
    return result;
  }
}


class DatePickerConfig {

    String? pickerUser;

    final DateTime currentDate = DateTime.now();

      viewCurrentTime(DateTime currentDate) {
        print(currentDate);

          var result = currentDate;

        return result;
      }
}

class ImageUploader {

  String? filePath;
  String? storagePath;

  ImageUploader(this.filePath, this.storagePath);

    String imageSelecter() {

        return "value";
          
        }
    
  



}
class Rectangle {
  double left, top, width, height;

  Rectangle(this.height,this.width,this.left,this.top);

  double get right => left + width;

  double get rightBottom => 3.14*(top+left);

}



void main(List<String> args) {
  var dikdortgen = Rectangle(1, 2, 3, 4);

  

  var d=Developer();
  var dateTime = DatePickerConfig();
  print(Po().multy().toString()); 
  print(ImageUploader('asd', 'asd'));
}