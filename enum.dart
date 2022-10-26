void main(List<String> args) {
  print(Status.none);
  var geek = Gfg.GeeksForGeeks;

  // Switch -case
  switch (geek) {
    case Gfg.Welcome:
      print("Doğru durum bu değil");
      break;

    case Gfg.to:
      print("Doğru durum bu değil");
      break;

    case Gfg.GeeksForGeeks:
      print("Doğru durum ");
      break;
    default:
  }
}

enum Status { none, running, stopped, paused }

enum Color { red, green, blue }

enum Gfg { Welcome, to, GeeksForGeeks }
