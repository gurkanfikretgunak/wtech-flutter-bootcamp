import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
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
        child: Column(
          children: [
            const Text('See your favorites in one place'),
            const Text('Log in to see your favorites'),
            TextButton(
              onPressed: () {},
              child: const Text('Explore events'),
            ),
            const Spacer(),
            CustomElevatedButton(
                text: 'Log in',
                onPressed: () {},
                color: const Color(0xFFC14D25),
                textStyle: const TextStyle(fontWeight: FontWeight.w900))
          ],
        ),
      ),
    );
  }
}
