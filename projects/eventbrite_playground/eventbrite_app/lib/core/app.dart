import 'package:eventbrite_app/core/init/navigation/navigation_route.dart';
import 'package:eventbrite_app/core/init/provider/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'init/navigation/navigation_service.dart';

class EventbriteApp extends StatelessWidget {
  const EventbriteApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeNotifier provider = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'Eventbrite',
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: provider.currentTheme,
    );
  }
}

//TODO Mock API ile backend oluşturulacak
//TODO Retrofit ile backend için ilgili modeller oluşturulup kullanılacak