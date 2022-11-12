import 'package:eventbrite_app/view/favorite/favorite_view.dart';
import 'package:eventbrite_app/view/profile/profile_view.dart';
import 'package:eventbrite_app/view/search/search_view.dart';
import 'package:eventbrite_app/view/ticket/ticket_view.dart';
import 'package:eventbrite_app/view/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

class EventbriteApp extends StatelessWidget {
  const EventbriteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventbrite',
      routes: {
        '/home': (context) => const WelcomeView(),
        '/search': (context) => const SearchView(),
        '/ticket': (context) => const TicketView(),
        '/favorite': (context) => const FavoriteView(),
        '/profile': (context) => const ProfileView(),
      },
      home: const WelcomeView(),
      // home: HomeView(),
    );
  }
}
