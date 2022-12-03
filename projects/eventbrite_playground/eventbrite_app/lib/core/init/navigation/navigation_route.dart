import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/view/base/base_view.dart';
import 'package:eventbrite_app/view/favorite/favorite_view.dart';
import 'package:eventbrite_app/view/get_started/get_started_view.dart';
import 'package:eventbrite_app/view/home/home_view.dart';
import 'package:eventbrite_app/view/login/password_view.dart';
import 'package:eventbrite_app/view/profile/profile_view.dart';
import 'package:eventbrite_app/view/register/register_view.dart';
import 'package:eventbrite_app/view/search/search_view.dart';
import 'package:eventbrite_app/view/ticket/ticket_view.dart';
import 'package:eventbrite_app/widgets/event_detail_widget.dart';
import 'package:flutter/material.dart';

import '../../../view/login/login_view.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstants.welcomePage:
        return normalNavigate(widget: const BaseView());
      case NavigationConstants.homePage:
        return normalNavigate(widget: const HomeView());
      case NavigationConstants.eventDetailPage:
        return normalNavigate(widget: EventDetailWidget());
      case NavigationConstants.searchPage:
        return normalNavigate(widget: SearchView());
      case NavigationConstants.favoritePage:
        return normalNavigate(widget: const FavoriteView());
      case NavigationConstants.ticketPage:
        return normalNavigate(widget: const TicketView());
      case NavigationConstants.profilePage:
        return normalNavigate(widget: const ProfileView());
      case NavigationConstants.getStartedPage:
        return normalNavigate(widget: GetStartedView());
      case NavigationConstants.loginPage:
        return normalNavigate(widget: LoginView());
      case NavigationConstants.passwordPage:
        return normalNavigate(widget: PasswordView());
      case NavigationConstants.registerPage:
        return normalNavigate(widget: RegisterView());

      default:
        return MaterialPageRoute(builder: (context) => const Text('Page Not Found'));
    }
  }
}

MaterialPageRoute normalNavigate({required Widget widget, Object? arguments}) {
  return MaterialPageRoute(
    builder: (context) => widget,
    settings: const RouteSettings(),
  );
}
