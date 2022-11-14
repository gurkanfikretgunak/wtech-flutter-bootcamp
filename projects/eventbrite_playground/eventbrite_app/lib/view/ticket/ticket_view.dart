import 'package:eventbrite_app/view/get_started/get_started_view.dart';
import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.ticket.index,
      ),
      body: SafeArea(
        child: GuestScreenWidget(
          title: 'Looking for your mobile tickets?',
          subtitle: 'Log into same account you used to buy your tickets.',
          bottomScreenIcon: Icons.confirmation_number_outlined,
          bottomButtonText: 'Log in',
          hasOutlineButton: true,
          bottomOutlineButtonText: 'Find things to do',
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
