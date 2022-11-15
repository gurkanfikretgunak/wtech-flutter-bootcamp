import 'package:flutter/cupertino.dart';
import 'package:robinhood_playground/core/app.dart';
import 'package:robinhood_playground/user_cache/shared_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedManager.initSharedPreferences();
  runApp(const App());
}
