import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.profile.index,
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
