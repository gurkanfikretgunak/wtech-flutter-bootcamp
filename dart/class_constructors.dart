//bir class tan örnek oluşturduğumuz zaman ilk çalışan yapılardır
//yani bir class ı kullanıp yeni bir nesne oluştururken bir takım işlemler yapmak istediğimizde constructors kullanıyoruz

void main(List<String> args) {
  Car car1 = Car();
  car1.start();
  car1.stepOnTheGas();

  Cars car2 = Cars(2021, "siyah");
  print("""Modeli: ${car2.model1} olan ${car2.color1} renkli araba""");

  //Cars car3 = Cars.isimli(2021, "siyah");
}

class Car {
  //Default constructor
  Car() {
    print("Yeni bir araba oluşturuldu");
  }
  int model = 2020;
  String color = "beyaz";

  void stepOnTheGas() {
    print("Gaza basıldı.");
  }

  void start() {
    print("Araba çalıştırıldı.");
  }
}

//Parametreli constructor
class Cars {
  int model1 = 2020;
  String color1 = "beyaz";
  Cars(int model, String color) {
    model1 = model;
    color1 = color;

    //this.model = model;
    //this.color = color;
    //Cars class ı içindeki model değeri

    //En doğru yazımı Cars(this.model, this.color);

    //İsimli constructor

    //Cars.isimli(this.model, this.color);
  }
}
