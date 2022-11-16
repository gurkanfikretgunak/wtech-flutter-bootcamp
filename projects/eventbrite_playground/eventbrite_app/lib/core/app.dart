import 'package:eventbrite_app/core/init/provider/theme_notifier.dart';
import 'package:eventbrite_app/view/favorite/favorite_view.dart';
import 'package:eventbrite_app/view/profile/profile_view.dart';
import 'package:eventbrite_app/view/search/search_view.dart';
import 'package:eventbrite_app/view/ticket/ticket_view.dart';
import 'package:eventbrite_app/view/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventbriteApp extends StatelessWidget {
  const EventbriteApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeNotifier provider = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'Eventbrite',
      routes: {
        '/home': (context) => const WelcomeView(),
        '/search': (context) => const SearchView(),
        '/ticket': (context) => const TicketView(),
        '/favorite': (context) => const FavoriteView(),
        '/profile': (context) => const ProfileView(),
      },
      theme: provider.currentTheme,
      home: const WelcomeView(),
      // home: HomeView(),
    );
  }
}

//TODO CustomThemeData yapısını oluşturulacak
//TODO Paddingler için constants değerleri oluşturulacak
//TODO Provider ile tema değişimi yapılacak
//TODO Provider ile navigation bar değişimi yapılabilir
//TODO Mock API ile backend oluşturulacak
//TODO Retrofit ile backend için ilgili modeller oluşturulup kullanılacak