
import 'package:flutter/material.dart';

import '../views/home_page_view.dart';

class AppRoutes{
  static Map<String, WidgetBuilder> get mainRoute => {"/home":(context) => HomeTicketPage()};
}