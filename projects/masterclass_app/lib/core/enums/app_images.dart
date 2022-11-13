enum PngImages { logo }

extension AppPngExtensions on PngImages {
  String get path => "assets/png/$name.png";
}
