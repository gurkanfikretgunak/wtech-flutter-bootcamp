void main(List<String> args) {
  double boy = 173;
  double kilo = 53.6;

  var vki = kilo / (boy * boy);

  if (vki < 18) {
    print("Zayıf");
  } else if (vki >= 18 && vki < 25) {
    print("Normal");
  } else if (vki >= 25 && vki <= 30) {
    print("Kilolu");
  } else if (vki >= 30 && vki <= 35) {
    print("Obez");
  } else if (vki > 35) {
    print("Obez 2");
  }
}
