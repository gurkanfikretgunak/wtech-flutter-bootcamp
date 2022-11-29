import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:eventbrite_app/view/ticket/ticket_past_view.dart';
import 'package:eventbrite_app/view/ticket/ticket_upcoming_view.dart';
import 'package:eventbrite_app/widgets/custom_tab_bar_with_sliver.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/constants/navigation/navigation_constants.dart';
import '../../core/init/navigation/navigation_service.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserNotifier>(context);

    return Scaffold(
      body: SafeArea(
        child: provider.isLogin
            ? const CustomTabBarWithSliver(
                appBarTitle: 'Tickets',
                tabLength: 2,
                tabs: [
                  Tab(text: 'Upcoming'),
                  Tab(text: 'Past tickets'),
                ],
                tabViews: [TicketUpcomingView(), TicketPastView()],
              )
            : GuestScreenWidget(
                title: AppConstants.ticketTitle,
                subtitle: AppConstants.ticketSubtitle,
                bottomScreenIcon: AppConstants.ticketIcon,
                bottomButtonText: AppConstants.ticketBottomButtonText,
                hasOutlineButton: true,
                bottomOutlineButtonText: AppConstants.ticketBottomOutlinedButtonText,
                navigateBottom: () {
                  NavigationService.instance.navigateToPage(routeName: NavigationConstants.getStartedPage);
                },
              ),
      ),
    );
  }
}
