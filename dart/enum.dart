void main(List<String> args) {
  print(CardHeight.large.getHeight());


}

enum CardHeight { small, medium, large }

extension CardHeightExtension on CardHeight {
  double getHeight() {
    switch (this) {
      case CardHeight.small:
        return 10;
      case CardHeight.medium:
        return 20;
      case CardHeight.large:
        return 30;
    }
  }
}

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}
