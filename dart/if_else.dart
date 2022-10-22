void main(List<String> args) {
  //if-else
  int age = 28;

  if (age <= 18) {
    print("Çocuk");
  } else if (age > 18 && age <= 25) {
    print("Genç");
  } else if (age > 25 && age <= 35) {
    print("Orta Yaşlı");
  } else if (age > 35 && age <= 50) {
    print("Yaşlı");
  } else if (age > 50) {
    print("İhtiyar");
  }
}
