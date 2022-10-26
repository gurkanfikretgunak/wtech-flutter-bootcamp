enum Heroes { orumcekadam, kaptanAmerika, hulk, kaptanMarvel, superman, batman }

extension HeroExtension on Heroes {
  String get heroname {
    switch (this) {
      case Heroes.orumcekadam:
        return "Örümcek Adam";
      case Heroes.kaptanAmerika:
        return "Kaptan Amerika";
      case Heroes.kaptanMarvel:
        return "Kaptan Marvel";
      case Heroes.hulk:
        return "Hulk";
      case Heroes.superman:
        return "Superman";
      case Heroes.batman:
        return "Batman";
      default:
        return "Kayıtlı olmayan kahraman";
    }
  }

  String get heroCinemaUniverse {
    switch (this) {
      case Heroes.orumcekadam:
        return "Marvel";
      case Heroes.kaptanAmerika:
        return "Marvel";
      case Heroes.kaptanMarvel:
        return "Marvel";
      case Heroes.hulk:
        return "Marvel";
      case Heroes.superman:
        return "DC";
      case Heroes.batman:
        return "DC";
      default:
        return "Kayıtlı olmayan sinematik evreni";
    }
  }

  void printHeroandUniverse() {
    print(
        "Kahraman ismi: ${this.heroname} , sinematik evreni: ${this.heroCinemaUniverse}");
  }
}

void main(List<String> args) {
  Heroes.values.forEach((Heroes hero) => hero.printHeroandUniverse());
}
