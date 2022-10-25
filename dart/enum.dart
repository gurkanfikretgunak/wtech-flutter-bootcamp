enum MyColors { red, orange, yellow, green, blue, indigo, violet }

class Flower {
  final String name;
  final MyColors color;
  Flower(this.name, this.color);
}

final myFlower = Flower('Rose', MyColors.blue);

void main() {
  if (myFlower.color == MyColors.blue) {
    print("That's a special flower!");
  } else {
    print("That's just a normal rose");
  }
}
