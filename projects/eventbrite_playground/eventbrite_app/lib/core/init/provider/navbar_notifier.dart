import 'package:eventbrite_app/view/favorite/favorite_view.dart';
import 'package:eventbrite_app/view/home/home_view.dart';
import 'package:eventbrite_app/view/profile/profile_view.dart';
import 'package:eventbrite_app/view/search/search_view.dart';
import 'package:eventbrite_app/view/ticket/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class NavbarNotifier extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateIndex(int index) {
    _currentIndex = index;
    Logger().i("NavbarNotifier: $_currentIndex");
    notifyListeners();
  }

  List<NavbarProvider> items = [
    NavbarProvider(
      icon: Icons.home_outlined,
      name: 'Home',
      widget: const HomeView(),
    ),
    NavbarProvider(
      icon: Icons.search,
      name: 'Search',
      widget: const SearchView(),
    ),
    NavbarProvider(
      icon: Icons.favorite_border_outlined,
      name: 'Favorite',
      widget: const FavoriteView(),
    ),
    NavbarProvider(
      icon: Icons.confirmation_number_outlined,
      name: 'Ticket',
      widget: const TicketView(),
    ),
    NavbarProvider(
      icon: Icons.person_outline_outlined,
      name: 'Profile',
      widget: const ProfileView(),
    ),
  ];
}

class NavbarProvider {
  String? name;
  IconData? icon;
  Widget? widget;
  NavbarProvider({this.name, this.icon, this.widget});
}
