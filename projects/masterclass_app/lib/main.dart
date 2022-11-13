import 'package:flutter/material.dart';
import 'package:masterclass_app/ui/pages/home_page/home_page.dart';
import 'package:masterclass_app/ui/pages/introduction_pages/introduction_page.dart';
import 'package:masterclass_app/ui/pages/introduction_pages/viewmodel/introduction_viewmodel.dart';
import 'package:masterclass_app/ui/pages/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IntroductionPageVM(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Masterclass',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => SplashPage(),
          '/home': (_) => HomePage(),
          '/introduction': (_) => IntroductionPage()
        },
      ),
    );
  }
}
