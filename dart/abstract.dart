void main(List<String> args) {
  var effectiveDoer = new EffectiveDoer();
  var result = effectiveDoer.doSomething();
}

// abstract sınıflar runtime zamanında oluşan ve sonra silinen  sınıflardır.
// içerisine gövedesiz metodlar yazılır . extend sınıfında gövde doldurulur
// Soyut sınıftan nesne oluşturulamaz ; Soyut sınıf özelleiklerini extend ettiği sınıfına aktardıgı için nesneyi extend ettiğimiz sınıftan oluşturur.

abstract class Doer {
  void doSomething();
}

class EffectiveDoer extends Doer {
  void doSomething() {
    print("soyut sınıf metod kullanıldı");
  }
}
