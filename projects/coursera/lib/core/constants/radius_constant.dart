import 'package:flutter/material.dart';

class RadiusConstant {
  static final RadiusConstant _instance = RadiusConstant._init();
  static RadiusConstant get instance => _instance;
  RadiusConstant._init();

  BorderRadiusGeometry buttonElevatedBorderRadius = BorderRadius.circular(5);
  double buttonIconSplashRadius = 30;
  double textFieldFormBorderRadius = 4.0;
  BorderRadiusGeometry chipRadius = const BorderRadius.all(Radius.circular(5));
}
