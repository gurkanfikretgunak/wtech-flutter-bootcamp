import 'package:eventbrite_app/core/init/provider/theme_notifier.dart';
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
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
    )
  ];
}
