enum Renk { Mavi, Mor, Siyah }

void main() {
  // Assign a value from
  // enum to a variable geek
  var secim = Renk.Mavi;

  // Switch-case
  switch (secim) {
    case Renk.Mavi:
      print("Maviyi seçtiniz.");
      break;
    case Renk.Mor:
      print("Moru seçtiniz.");
      break;
    case Renk.Siyah:
      print("Siyahı seçtiniz.");
      break;
  }
}
