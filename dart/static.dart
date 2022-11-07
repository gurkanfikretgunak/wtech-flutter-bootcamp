// static instance'lar projenin hayatı boyunca ayakta durur ve bellekte yerini tutar.
//static kavramı tehlikelidir ve dikkatli kullanılmalıdır. Static tanımlanan yapılara herkes erişebilir ve değiştirebilir.
//Static verilen değişkenlerde const kullanılması önerilir.
void main(List<String> args) {
  calculateMoney();
}

void calculateMoney() {
  if ((Product.money ?? 0) > 5) {
    print("5 tl daha ekledik");
    Product.incerementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;

  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}
