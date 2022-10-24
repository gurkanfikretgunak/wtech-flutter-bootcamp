class Person {
  String? name;
  String? surname;
  int? yas;
  String? gender;
}

class Skills {
  int? successScore;
}

//Flutterda görülen her şey bir sınıf.
class Developer extends Person with Skills {}

class Math {
  int x = 9;
  int y = 9;

  int multy() {
    final result = x * y;
    return result;
  }
}

class Date {
  final DateTime currentDate = DateTime.now();

  DateTime viewCurrentTime(currentDate) {
    print(currentDate);
    var result = currentDate;
    return result; //String olarak dönmesini istersen .toString()
  }
}

class ImagePicker {
  String? filePath;
  String? storagePath;
  ImagePicker(this.filePath, this.storagePath);
  //parametre ihtiyacı yoksa static yazılabilir.
  static imageSelecter() {
    imagePathSelecter() {}
  }
}

class getC {
//double get
}

void main(List<String> args) {
  //Eşitlemeden direkt bu şekilde yazdırılabilir.
  print(Math().multy().toString());
  var dateTime = Date();
  var ip = ImagePicker("", "");
}
