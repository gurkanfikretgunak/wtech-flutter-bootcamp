class Persona {
  String? gender;
  int? age;
  int? countryCode;
}

class DeveloperSkils {
  List<String>? softwareSkils;
}

class EducationSkils {
  int? succesScore;
}

class Devoloper extends Persona with EducationSkils, DeveloperSkils {}

class Po {
  int x = 9;
  int y = 8;

  int Multy() {
    var result = x * y;

    return result;
  }
}

// Final Const Late kullanımı

class DateLoad {
  final DateTime tarih2 = DateTime.now();
  DateTime TarihAl(DateTime tarih2) {
    return tarih2;
  }
  //final run time da çalıştığı
  //için zaman bilgisi oluşturulabilir.

}

// Constroctur metodlar sınıflarla aynı değeri alan geri dönüş değeri olmayan  metodlardır.
// Bizim constrocturlara ihtiyaç duyamızın nedeni içerisine tanımladıgımız fieldleri bazen boş bırakıp veya late ile
//seni sonra dolduracağız dediğimizdee unutttugumuz zaman hata alırız bunun önüne geçmek için Constroctura ihtiyaç duyarız .
class Araba {
  String? color;
  String? automatic;
  String? beygirpower;
  int? door;

  // ct
  Araba(String color, String Automatic) {
    this.color = color;
    this.automatic = Automatic;
    print("ct çalıştı ");
  }
  // isimlendirilmiş parameter

  Araba.SecondHand(String beygirpower, int door) {
    this.beygirpower = beygirpower;
    this.door = door;
  }
}

void main(List<String> args) {
  var d = new Devoloper();
  //var carp = new Po();
  // carp.Multy();

  // classların içerisindeki metodlara  nesne tanımlaması yapmadan da ulaşılabilir
  Po().Multy().toString();
}
