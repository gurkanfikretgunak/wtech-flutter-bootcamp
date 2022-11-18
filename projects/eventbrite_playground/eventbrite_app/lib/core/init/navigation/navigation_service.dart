import 'package:flutter/cupertino.dart';

abstract class INavigationService {
  Future<void> navigateToPage({String? routeName, Object? data});
}

class NavigationService implements INavigationService {
  NavigationService._init();
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Future<void> navigateToPage({String? routeName, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(routeName!, arguments: data);
  }
}
