
import 'package:flutter/material.dart';

import '../views/orjin_home_page.dart';


class AppRoutes{
  static Map<String, WidgetBuilder> get mainRoute => {"/home":(context) => const OriginalHomePage()};
}