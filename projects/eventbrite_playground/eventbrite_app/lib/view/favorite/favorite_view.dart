import 'package:eventbrite_app/view/get_started/get_started_view.dart';
import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.favorite.index,
      ),
      body: SafeArea(
        child: GuestScreenWidget(
          title: 'See your favorites in one place',
          subtitle: 'Log in to see your favorites',
          hasTextButton: true,
          textDetail: 'Explore events',
          bottomScreenIcon: Icons.favorite_border_outlined,
          bottomButtonText: 'Log in',
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
