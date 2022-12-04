import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/provider/navigation_state.dart';
import 'package:neo_financial_app/core/provider/onboard_state.dart';
import 'package:neo_financial_app/core/provider/user_state.dart';
import 'package:neo_financial_app/core/themes/custom_theme_data.dart';
import 'package:provider/provider.dart';

import '../routes/navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => OnboardState())),
        ChangeNotifierProvider(
          create: ((context) => UserState()),
        ),
        ChangeNotifierProvider(
          create: ((context) => NavigationState()),
        )
      ],
      child: MaterialApp(
        title: TextConstants.appTitle,
        theme: CustomTheme.customThemeData(),
        onGenerateRoute: Navigation.navigationGenarator,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
