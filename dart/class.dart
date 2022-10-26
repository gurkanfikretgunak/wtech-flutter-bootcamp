void main(List<String> args) {
  var bmw = Araba(); //araba sınıfından bir nesne ürettik
  bmw.renk = "mavi"; // rengine mavi atadık
  bmw.calistir(); //tanımladığımız metodu çağırdık
  bmw.durdur(); //tanımladığımız metodu çağırdık
}

class Araba {
  String? renk;
  int? hiz;
  bool? calisiyormu;

  void calistir() {
    hiz = 120;
    calisiyormu = true;
    print(
        "arabanın rengi $renk arabanın hızı $hiz ve çalışıyor mu $calisiyormu");
  }

  void durdur() {
    hiz = 0;
    calisiyormu = false;
    print(
        "arabanın rengi $renk arabanın hızı $hiz ve çalışıyor mu $calisiyormu");
  }
}
