import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/app.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(MyuserAdapter());

  runApp(const App());
}
