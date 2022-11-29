import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class CustomTabBarWithSliver extends StatelessWidget {
  final String appBarTitle;
  final int tabLength;
  final List<Widget> tabs;
  final List<Widget> tabViews;
  const CustomTabBarWithSliver(
      {super.key, required this.appBarTitle, required this.tabLength, required this.tabs, required this.tabViews});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabLength,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: PaddingConstants.defaultPadding,
                title: Text(appBarTitle, style: Theme.of(context).textTheme.headline3),
              ),
            ),
            SliverPersistentHeader(
                delegate: _TabBarDelegate(
                  TabBar(tabs: tabs),
                ),
                pinned: true),
          ];
        },
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: tabViews,
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _TabBarDelegate(this._tabBar);
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
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
