import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget with PaddingConstants {
  SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: AppConstants.searchTabBarLength,
      child: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.tune))],
        ),
        body: Column(
          children: [
            Padding(
              padding: defaultHorizontalPadding * 2,
              child: TextField(
                decoration: InputDecoration(
                  hintText: AppConstants.searchBarHintText,
                  hintStyle: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            const TabBar(
              tabs: [Tab(text: AppConstants.searchEventsTab), Tab(text: AppConstants.searchOrganizersTab)],
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                //TODO: İçerikleri eklenecek
                children: [
                  Center(child: Text('Events')),
                  Center(child: Text('Organizers')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
