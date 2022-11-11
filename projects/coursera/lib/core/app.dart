import 'package:coursera/core/themes/custom_theme_data.dart';
import 'package:coursera/provider/p_bottom_nav_bar.dart';
import 'package:coursera/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ColorState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomeView(),
        title: 'Flutter Demo',
        theme: CustomTheme.customThemeData(context),
      ),
    );
  }
}
