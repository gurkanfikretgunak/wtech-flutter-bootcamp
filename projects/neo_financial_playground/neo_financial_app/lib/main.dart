import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/app.dart';

import 'core/data/local/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedPreferences.init();
  runApp(const MyApp());
}
