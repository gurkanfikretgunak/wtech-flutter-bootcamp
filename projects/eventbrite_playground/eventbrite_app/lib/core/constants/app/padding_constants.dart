import 'package:flutter/material.dart';

mixin PaddingConstants {
  final EdgeInsets defaultPadding = const EdgeInsets.all(10);
  final EdgeInsets defaultBottomPadding = const EdgeInsets.only(bottom: 10);
  final EdgeInsets defaultTopPadding = const EdgeInsets.only(top: 10);
  final EdgeInsets defaultLeftPadding = const EdgeInsets.only(left: 10);
  final EdgeInsets defaultRightPadding = const EdgeInsets.only(right: 10);
  final EdgeInsets defaultVerticalPadding = const EdgeInsets.symmetric(vertical: 10);
  final EdgeInsets defaultHorizontalPadding = const EdgeInsets.symmetric(horizontal: 10);
}
