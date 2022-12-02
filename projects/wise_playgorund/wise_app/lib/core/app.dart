import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wise_app/core/provider/provider_theme.dart';
import 'package:wise_app/core/provider/unit_provider.dart';
import 'package:wise_app/pages/home_page.dart';
import 'package:wise_app/pages/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider (create: (_) => ThemeProvider()),
        ChangeNotifierProvider (create: (_) => UnitProvider()),
      ],
      builder: (context, chld) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Wtech & Flutter Project',
          debugShowCheckedModeBanner: false,
          theme: provider.theme,
          home: const HomePage(),
        );
      },
    );
  }
}
