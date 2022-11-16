import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/view/get_started/get_started_view.dart';
import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.favorite.index,
      ),
      body: SafeArea(
        child: GuestScreenWidget(
          title: AppConstants.favoriteTitle,
          subtitle: AppConstants.favoriteSubtitle,
          hasTextButton: true,
          textDetail: AppConstants.favoriteTextButton,
          bottomScreenIcon: AppConstants.favoriteIcon,
          bottomButtonText: AppConstants.favoriteBottomButtonText,
          navigateBottom: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const GetStartedView(),
              ),
            );
          },
        ),
      ),
    );
  }
}
