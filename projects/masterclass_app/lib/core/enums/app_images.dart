enum PngImages {
  logo,
  slide1,
  slide2,
  slide3,
}

extension AppPngExtensions on PngImages {
  String get path => "assets/png/$name.png";
}
