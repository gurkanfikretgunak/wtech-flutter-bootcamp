//enum bir grup sabiti(constant) temsil eden özel class tipidir

enum Color { RED, GREEN, BLUE, WHITE }
//sadece verdiğimiz renkler girilebilir. bu da hatalı girişleri engelliyor

void main(List<String> args) {
  Customer customer1 = new Customer(123, "Ali", "Ankara", Color.GREEN);
  Customer customer2 = new Customer(1234, "Ahmet", "İstanbul", Color.WHITE);

  Color color = Color.BLUE;
}

class Customer {
  int? id;
  String? name;
  String? city;
  Color? favoriteColor; //enum

  Customer(int id, String name, String city, Color favoriteColor) {
    this.id = id;
    this.name = name;
    this.city = city;
    this.favoriteColor = favoriteColor;
  }

  int? getId() {
    return id;
  }

  setId(int id) {
    this.id = id;
  }

  String? getName() {
    return name;
  }

  setName(String name) {
    this.name = name;
  }

  String? getCity() {
    return city;
  }

  setCity(String city) {
    this.city = city;
  }

  Color? getFavoriteColor() {
    return favoriteColor;
  }

  setFavoriteColor(Color favoriteColor) {
    this.favoriteColor = favoriteColor;
  }
}
