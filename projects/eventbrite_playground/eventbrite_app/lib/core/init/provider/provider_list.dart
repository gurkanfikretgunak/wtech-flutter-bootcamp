import 'package:eventbrite_app/core/init/provider/event_notifier.dart';
import 'package:eventbrite_app/core/init/provider/login_notifier.dart';
import 'package:eventbrite_app/core/init/provider/navbar_notifier.dart';
import 'package:eventbrite_app/core/init/provider/password_notifier.dart';
import 'package:eventbrite_app/core/init/provider/register_notifier.dart';
import 'package:eventbrite_app/core/init/provider/theme_notifier.dart';
import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  static AppProvider? _instance;
  static AppProvider get instance {
    _instance ??= AppProvider._init();
    return _instance!;
  }

  AppProvider._init();
  List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ThemeNotifier()),
    ChangeNotifierProvider(create: (context) => NavbarNotifier()),
    ChangeNotifierProvider(create: (context) => RegisterNotifier()),
    ChangeNotifierProvider(create: (context) => LoginNotifier()),
    ChangeNotifierProvider(create: (context) => PasswordNotifier()),
    ChangeNotifierProvider(create: (context) => UserNotifier()),
    ChangeNotifierProvider(create: (context) => EventNotifier()),
  ];
}
