import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GuestScreenWidget(
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
