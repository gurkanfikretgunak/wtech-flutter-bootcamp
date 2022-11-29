import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class FavoriteEventsView extends StatelessWidget {
  const FavoriteEventsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> eventCategories = [
      {
        'name': 'Music',
      },
      {
        'name': 'Food & Drink',
      },
      {
        'name': 'Active',
      },
      {
        'name': 'Learn',
      },
      {
        'name': 'Festival',
      },
      {
        'name': 'Party',
      },
    ];
    return Padding(
      padding: PaddingConstants.defaultPadding * 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('No liked events yet', style: Theme.of(context).textTheme.headline6),
          Padding(
            padding: PaddingConstants.defaultVerticalPadding + PaddingConstants.defaultBottomPadding * 4,
            child: Text(
                'Like an event to find it later, receive notifications before it sells out, and help us improve recommendations for you.',
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Text('Find events', style: Theme.of(context).textTheme.headline6),
          Padding(
            padding: PaddingConstants.defaultVerticalPadding * 2,
            child: buildCategories(eventCategories, context),
          ),
        ],
      ),
    );
  }

  Widget buildCategories(List<Map<String, String>> eventCategories, context) {
    return Wrap(
      spacing: 30,
      runSpacing: 10,
      children: eventCategories
          .map(
            (e) => Chip(
              padding: PaddingConstants.defaultHorizontalPadding,
              label: Text(e['name'] ?? ''),
              backgroundColor: Theme.of(context).primaryColorDark,
              labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey),
            ),
          )
          .toList(),
    );
  }
}
