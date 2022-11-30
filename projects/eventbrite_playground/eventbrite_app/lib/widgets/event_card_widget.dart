import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget with PaddingConstants {
  final String? eventDate;
  final String? eventName;
  final String? eventImage;
  final String? eventOrganization;

  EventCard({
    Key? key,
    required this.eventDate,
    required this.eventName,
    required this.eventImage,
    required this.eventOrganization,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultVerticalPadding + defaultHorizontalPadding * 2,
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.network(
                  eventImage!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eventDate ?? '',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Padding(
                      padding: defaultVerticalPadding,
                      child: Text(
                        eventName ?? '',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Text(
                      eventOrganization ?? '',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: null,
              icon: Icon(AppConstants.eventCardFavoriteIcon),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 40,
            child: IconButton(
              onPressed: null,
              icon: Icon(AppConstants.eventCardShareIcon),
            ),
          ),
        ],
      ),
    );
  }
}
