import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.tune))],
        ),
        body: Column(
          children: [
            Padding(
              padding: PaddingConstants.defaultHorizontalPadding * 2,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Start Searching',
                  hintStyle: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            const TabBar(
              tabs: [Tab(text: 'Events'), Tab(text: 'Organizers')],
            ),
            const Expanded(
              child: TabBarView(
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
