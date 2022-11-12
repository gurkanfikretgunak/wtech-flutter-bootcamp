import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wise_app/core/theme/provider_theme.dart';
import 'package:wise_app/pages/splash_page.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
      builder: (context,chld){
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Wtech & Flutter Project',
          debugShowCheckedModeBanner: false,
          theme: provider.theme,
          home: const SplashPage(),
        );
      },
    );
  }
}