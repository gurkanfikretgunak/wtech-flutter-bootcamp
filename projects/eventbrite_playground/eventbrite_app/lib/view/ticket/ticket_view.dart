import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/widgets/guest_screen_widget.dart';
import 'package:flutter/material.dart';

import '../../core/constants/navigation/navigation_constants.dart';
import '../../core/init/navigation/navigation_service.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLogin = true;

    return Scaffold(
      body: SafeArea(
        child: isLogin
            ? UserTicket()
            : GuestScreenWidget(
                title: AppConstants.ticketTitle,
                subtitle: AppConstants.ticketSubtitle,
                bottomScreenIcon: AppConstants.ticketIcon,
                bottomButtonText: AppConstants.ticketBottomButtonText,
                hasOutlineButton: true,
                bottomOutlineButtonText:
                    AppConstants.ticketBottomOutlinedButtonText,
                navigateBottom: () {
                  NavigationService.instance.navigateToPage(
                      routeName: NavigationConstants.getStartedPage);
                },
              ),
      ),
    );
  }
}

class UserTicket extends StatelessWidget {
  const UserTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: PaddingConstants.defaultPadding,
                title: Text('Tickets',
                    style: Theme.of(context).textTheme.headline3),
              ),
            ),
            SliverPersistentHeader(
                delegate: _TabBarDelegate(
                  const TabBar(tabs: [
                    Tab(text: 'Upcoming'),
                    Tab(text: 'Past tickets'),
                  ]),
                ),
                pinned: true),
          ];
        },
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Center(child: Text('Upcoming')),
            Center(child: Text('Past tickets')),
          ],
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _TabBarDelegate(this._tabBar);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        height: 100.0,
        margin: const EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: _tabBar,
      ),
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
