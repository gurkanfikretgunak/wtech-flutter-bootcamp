/** Sabit sayıda sabit değerleri temsil etmek için kullanılır.
 * 
 * 
 * 
 * 
 * 
 * 
 */

enum Color { red, green, blue }

method() {
  final favoriteColor = Color.blue;
  if (Color.red.index == 2) {
    print("dfdf");
  }
}

enum Weather {
  sunny,
  cloudy,
  rainy,
}

extension WeatherExt on Weather {
  static const weatherMap = {
    Weather.sunny: "What a lovely weather",
    Weather.cloudy: "Scattered showers predicted",
    Weather.rainy: "Will be raining today",
  };

  void console() {
    print("${this.index} ${this.about}");
  }

  String get about => weatherMap[this]!;
}

// enum ImageEnum { image }

// extension ImageExtension on ImageEnum {
//   Image toImage(String imgName,
//           {required double? width, required double? height}) =>
//       Image.asset("assets/images/${imgName}.png", height: height, width: width);
// }

// class Image {}
