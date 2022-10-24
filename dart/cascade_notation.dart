void main(List<String> args) {
  Human batuhan = Human()
    ..name = 'Batuhan'
    ..yas = 22
    ..country = 'Turkey'
    ..eyeColors = 'Brown'
    ..weight = 79.2
    ..height = 183
    ..isUnderage = false;

  print(batuhan.height);
}

class Human {
  String? name;
  int? yas;
  String? country;
  String? eyeColors;
  double? weight;
  double? height;
  bool? isUnderage;

  
}
