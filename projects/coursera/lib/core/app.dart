import 'package:coursera/core/provider/sign_up_state.dart';
import 'package:coursera/core/themes/custom_theme.dart';
import 'package:coursera/core/provider/bottom_nav_bar_state.dart';
import 'package:coursera/routes/on_generate_routes.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationBarState(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpState(),
        ),
      ],
      child: MaterialApp(
        onGenerateRoute: CustomRouter.generateRoute,
        // onUnknownRoute: CustomRouter.unknownRoute,
        initialRoute: "/",
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: CustomTheme.customThemeData(context),
      ),
    );
  }
}
