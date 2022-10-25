import 'dart:math';

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

//Constructor Sample------------------------
class SumNum {
  SumNum(this.list);

  List<int> list;
  int increase() {
    int sum = 0;
    for (int i = 0; i < list.length; i++) {
      sum += list[i];
    }
    print("total : $sum");
    return sum;
  }
}

//Get-Set Sample---------------------
class FindHypotenuse {
  double a;
  double b;

  FindHypotenuse(this.a, this.b);

  double get sum => (a * a) + (b * b);
  double get hypotenuse => sqrt(sum);
}

//Abstract Sample--------------------
abstract class HeyBy {
  void hey();
  void by();
}

class CafeLogo extends HeyBy {
  @override
  void by() {
    print("işletmeye hoşgeldiniz");
  }

  @override
  void hey() {
    print("Elveda,Yine bekleriz");
  }
}

void main(List<String> args) {
  //Eşitlemeden direkt bu şekilde yazdırılabilir.
  print(Math().multy().toString());
  List<int> list = [1, 2, 3, 4];
  SumNum(list).increase();
  print(FindHypotenuse(5, 12).hypotenuse);
  CafeLogo().hey();

  //var dateTime = Date();
  //var ip = ImagePicker("", "");
}
