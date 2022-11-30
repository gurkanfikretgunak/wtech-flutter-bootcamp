import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:eventbrite_app/widgets/custom_tab_bar_with_sliver.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:eventbrite_app/widgets/ticket/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/constants/navigation/navigation_constants.dart';
import '../../core/init/navigation/navigation_service.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: context.read<UserNotifier>().isLogin
            ? CustomTabBarWithSliver(
                appBarTitle: AppConstants.ticketSliverAppBarTitle,
                tabLength: AppConstants.ticketTabBarLength,
                tabs: const [
                  Tab(text: AppConstants.ticketUpcomingTab),
                  Tab(text: AppConstants.ticketPastTab),
                ],
                tabViews: const [UpcomingTicketsWidget(), PastTicketsWidget()],
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
