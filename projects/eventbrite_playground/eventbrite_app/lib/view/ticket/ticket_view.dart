import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/view/get_started/get_started_view.dart';
import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.ticket.index,
      ),
      body: SafeArea(
        child: GuestScreenWidget(
          title: AppConstants.ticketTitle,
          subtitle: AppConstants.ticketSubtitle,
          bottomScreenIcon: AppConstants.ticketIcon,
          bottomButtonText: AppConstants.ticketBottomButtonText,
          hasOutlineButton: true,
          bottomOutlineButtonText: AppConstants.ticketBottomOutlinedButtonText,
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
