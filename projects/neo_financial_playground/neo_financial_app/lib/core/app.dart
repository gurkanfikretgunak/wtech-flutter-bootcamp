import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/onboarding_load_widget_state.dart';
import 'package:neo_financial_app/core/provider/sign_up_state.dart';
import 'package:provider/provider.dart';
import 'package:neo_financial_app/core/themes/custom_theme_data.dart';
import '../routes/navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: ((context) => OnboardingLoadWidgetState())),
        ChangeNotifierProvider(create: ((context) => SignUpState()))
      ],
      child: MaterialApp(
        title: 'Neo Financial',
        theme: CustomTheme.customThemeData(),
        onGenerateRoute: Navigation.navigationGenarator,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
