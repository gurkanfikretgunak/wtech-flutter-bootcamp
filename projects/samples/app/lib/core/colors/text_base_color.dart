import 'package:app/core/colors/base_color.dart';

import 'Container_base_color.dart';
import 'base_color.dart';

class TextBaseColor extends BaseColor {
  @override
  Color background() {
    return Colors.red;
  }

  @override
  Color forground() {
    // TODO: implement forground
    throw UnimplementedError();
  }

  @override
  Gradient gradient() {
    // TODO: implement gradient
    throw UnimplementedError();
  }

  @override
  String colorNamed() {
    return "Text";
  }
}
