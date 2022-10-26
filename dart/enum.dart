enum Films { Avengers, Titanic, Inception, Matrix, Godfather }

extension FilmsExtension on Films {
  String get filmGenres {
    switch (this) {
      case Films.Avengers:
        return "Science Fiction";
      case Films.Godfather:
        return "Mafia";
      case Films.Inception:
        return "Tension";
      case Films.Matrix:
        return "Action";
      case Films.Titanic:
        return "Romantic";
      default:
        return "Tanımsız";
    }
  }

  String get filmName {
    switch (this) {
      case Films.Avengers:
        return "Avengers";
      case Films.Godfather:
        return "The Godfather";
      case Films.Inception:
        return "Inception";
      case Films.Matrix:
        return "Matrix";
      case Films.Titanic:
        return "Titanic";
      default:
        return "Tanımsız";
    }
  }

  void printTeamNameAndColor() {
    print("Film Name: ${this.filmName} , Film Genres: ${this.filmGenres}");
  }
}

void main(List<String> args) {
  Films.values.forEach((Films takim) => takim.printTeamNameAndColor());
}
