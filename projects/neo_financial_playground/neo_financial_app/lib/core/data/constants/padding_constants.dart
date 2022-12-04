import 'package:flutter/material.dart';

class PaddingConstants {
  PaddingConstants._();

  // DEFAULT PADDING SIZES
  static const double _small = 4.0;
  static const double _medium = 8.0;
  static const double _large = 15.0;
  static const double _xLarge = 30.0;

  // ALL
  static const EdgeInsets smallPadding = EdgeInsets.all(_small);
  static const EdgeInsets mediumPadding = EdgeInsets.all(_medium);
  static const EdgeInsets largePadding = EdgeInsets.all(_large);
  static const EdgeInsets xLargePadding = EdgeInsets.all(_xLarge);

  // SYMETRIC
  // Horizontal
  static const EdgeInsets smallHorizontalPadding =
      EdgeInsets.symmetric(horizontal: _small);
  static const EdgeInsets mediumHorizontalPadding =
      EdgeInsets.symmetric(horizontal: _medium);
  static const EdgeInsets largeHorizontalPadding =
      EdgeInsets.symmetric(horizontal: _large);
  static const EdgeInsets xLargeHorizontalPadding =
      EdgeInsets.symmetric(horizontal: _xLarge);

  // Vertical
  static const EdgeInsets smallVerticalPadding =
      EdgeInsets.symmetric(vertical: _small);
  static const EdgeInsets mediumVerticalPadding =
      EdgeInsets.symmetric(vertical: _medium);
  static const EdgeInsets largeVerticalPadding =
      EdgeInsets.symmetric(vertical: _large);
  static const EdgeInsets xLargeVerticalPadding =
      EdgeInsets.symmetric(vertical: _xLarge);
  static const EdgeInsets xxLargeVerticalPadding =
      EdgeInsets.symmetric(vertical: _xLarge * 2);

  // ONLY
  // Bottom
  static const EdgeInsets smallBottomPadding = EdgeInsets.only(bottom: _small);
  static const EdgeInsets mediumBottomPadding =
      EdgeInsets.only(bottom: _medium);
  static const EdgeInsets largeBottomPadding = EdgeInsets.only(bottom: _large);
  static const EdgeInsets xLargeBottomPadding =
      EdgeInsets.only(bottom: _xLarge);

  // Left
  static const EdgeInsets smallLeftPadding = EdgeInsets.only(left: _small);
  static const EdgeInsets mediumLeftPadding = EdgeInsets.only(left: _medium);
  static const EdgeInsets largeLeftPadding = EdgeInsets.only(left: _large);
  static const EdgeInsets xLargeLeftPadding = EdgeInsets.only(left: _xLarge);

  // Top
  static const EdgeInsets smallTopPadding = EdgeInsets.only(top: _small);
  static const EdgeInsets mediumTopPadding = EdgeInsets.only(top: _medium);
  static const EdgeInsets largeTopPadding = EdgeInsets.only(top: _large);
  static const EdgeInsets xLargeTopPadding = EdgeInsets.only(top: _xLarge);

  // MIX
  static const EdgeInsets customAppBarPadding =
      EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0);
  static const EdgeInsets customSignInPadding =
      EdgeInsets.only(top: 80.0, left: _large, right: _large);
  static const EdgeInsets customRewardsPadding =
      EdgeInsets.only(left: _large, bottom: _small);
}
