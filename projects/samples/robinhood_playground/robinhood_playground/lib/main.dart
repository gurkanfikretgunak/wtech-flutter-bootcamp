import 'package:flutter/cupertino.dart';
import 'package:robinhood_playground/core/app.dart';
import 'package:robinhood_playground/product/client/retrofit_manager.dart';
import 'package:robinhood_playground/product/user/get_all_user.dart';
import 'package:robinhood_playground/user_cache/shared_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedManager.initSharedPreferences();
  await RetrofitManager.initRetrofit();
  await GetAllUser.pullUsers();
  runApp(const App());
}
