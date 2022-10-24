//1.Bir fonksiyonu kullanmadan önce, tanımlamak gerekir.
//1. void terimini ise fonksiyonumuz bir değer döndürmüyorsa kullanırız.
void merhaba() {
  print("merhaba");
}

//2.Fonksiyonun çağrılması ve kullanılması 
// main fonksiyonu içerisinde merhaba fonksiyonunu kullandık
void main() {
  merhaba();
}

// 3. Fonksiyonlar bir eylem gerçekleştirmek yerine bize bir değer de döndürebilir. Bu işlemi return terimi ile yaparız.
// 3. sayi() fonksiyonunda return ettiğimiz değer integer tipinde 
// 3. Fonksiyon oluştururken, eğer bir değer döndürecekse fonksiyon isminden önce return tipini belirtmemiz gerekir.
int sayi() {
  return 10;
}

void main() {
  print(sayi());
}

// 4. /Fonksiyon parametresi) topla adında bir fonksiyon oluşturduk. bu fonksiyonun başta int tipinde bir değer döndüreceğini belirttik. 
// 4. int a ve int b parametrelerimiz
// 4.  Bu parametreleri fonksiyonumuzun içerisinde topladık ve return ettik.
// 4. main fonksiyonu içerisinde de topla fonksiyonumuza iki değer girerek çalıştırılır. 
int topla(int a, int b) {
  return a + b;
}

main() {
  print(topla(5, 10));
}

//5.  parametresinin girilmemesi durumunda b parametremizin değeri 2 olacaktır.
int carp(int a, [int b = 2]) {
  return a * b;
}

main() {
  print(carp(5)); //10
  print(carp(5, 3)); //15
}

//6. carp fonksiyonunun parametrelerini tanımlıyorken, map kullanımındaki gibi değer yollayacağımız parametreyi de belirtiriz. 
  return a * b;
}

main() {
  print(carp(a: 5, b: 4));
}
int carp({int a, b}) {
  return a * b;
}

main() {
  print(carp(a: 5, b: 4));
}