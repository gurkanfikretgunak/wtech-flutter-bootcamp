import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../views/authentication/sign_in/sign_in_with_email/sign_in_with_email_view_model.dart';
import '../../views/authentication/sign_up/sign_up_view_model.dart';
import '../../views/bottom_nav_bar/bottom_nav_bar_view_model.dart';
import '../../views/bottom_nav_bar/drawer/theme/theme_setting_view_model.dart';
import '../../views/course_detail/course_detail_view_model.dart';

class MultiProviderInit {
  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => BottomNavBarViewModel()),
    ChangeNotifierProvider(create: (_) => SignUpViewModel()),
    ChangeNotifierProvider(create: (_) => SignInWithEmailViewModel()),
    ChangeNotifierProvider(create: (_) => ThemeSettingViewModel()),
    ChangeNotifierProvider(create: (_) => CourseDetailViewModel()),
  ];
}
