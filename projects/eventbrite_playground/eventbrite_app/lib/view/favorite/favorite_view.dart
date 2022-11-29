import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:eventbrite_app/view/favorite/favorite_events_view.dart';
import 'package:eventbrite_app/view/favorite/favorite_organizers_view.dart';
import 'package:eventbrite_app/widgets/custom_tab_bar_with_sliver.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserNotifier>(context);
    return Scaffold(
      body: SafeArea(
        child: provider.isLogin
            ? const CustomTabBarWithSliver(
                appBarTitle: 'Favorites',
                tabLength: 2,
                tabs: [
                  Tab(text: 'Events'),
                  Tab(text: 'Organizers'),
                ],
                tabViews: [FavoriteEventsView(), FavoriteOrganizersView()],
              )
            : GuestScreenWidget(
                title: AppConstants.favoriteTitle,
                subtitle: AppConstants.favoriteSubtitle,
                hasTextButton: true,
                textDetail: AppConstants.favoriteTextButton,
                bottomScreenIcon: AppConstants.favoriteIcon,
                bottomButtonText: AppConstants.favoriteBottomButtonText,
                navigateBottom: () {
                  NavigationService.instance.navigateToPage(routeName: NavigationConstants.getStartedPage);
                },
              ),
      ),
    );
  }
}
