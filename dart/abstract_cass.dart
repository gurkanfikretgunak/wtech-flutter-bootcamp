import 'dart:math';

abstract class GeomethricShape {
  final double edge;

  GeomethricShape(this.edge);

  double calculateArea();
}

class Square extends GeomethricShape {
  Square(super.edge);

  @override
  double calculateArea() {
    return edge * edge;
  }
}

class Triangle extends GeomethricShape {
  final double edge2;
  final double edge3;
  late String shapeName;

  Triangle(super.edge, this.edge2, this.edge3);
  @override
  double calculateArea() {
    return sqrt(getUValue * (getUValue - edge) * (getUValue - edge2) * (getUValue - edge3));
  }

  double get getUValue => (edge + edge2 + edge3) / 2;

  String get getName => shapeName;

  set SetName(String value) => shapeName = value;
}

void main(List<String> args) {
  Square s1 = Square(10);
  print(s1.calculateArea());
  Triangle t1 = Triangle(10, 8, 6);

  print(t1.calculateArea());

  t1.SetName = 'Triangle';
  print(t1.getName);
}
