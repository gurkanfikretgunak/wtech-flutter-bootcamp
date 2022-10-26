void main(List<String> args) {
  Araba bmw = Araba("kırmızı", true);

  bmw.bilgiVer();
}

class Araba {
  String? renk;
  bool? otomatikmi;

  Araba(String renk, bool otomatikmi) {
    this.renk = renk;
    this.otomatikmi = otomatikmi;
    print("ilk çalışan metot");
  }
  bilgiVer() {
    print("Aracımız $renk renkte ve otomatik mi $otomatikmi");
  }
}
