import '../../views/drawer/theme_setting_view_model.dart';
import 'bottom_nav_bar_state.dart';
import '../../views/authentication/sign_in/sign_in_with_email/sign_in_with_email_view_model.dart';
import '../../views/authentication/sign_up/sign_up_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class MultiProviderInit {
  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => BottomNavigationBarState()),
    ChangeNotifierProvider(create: (_) => SignUpViewModel()),
    ChangeNotifierProvider(create: (_) => SignInWithEmailViewModel()),
    ChangeNotifierProvider(create: (_) => ThemeSettingViewModel()),
  ];
}
