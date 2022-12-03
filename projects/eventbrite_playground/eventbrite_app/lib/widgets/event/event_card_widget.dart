import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget with PaddingConstants {
  final String eventDate;
  final String eventName;
  final String eventImage;
  final bool eventIsPaid;
  final String eventOrganization;
  final void Function()? onTap;
  EventCard({
    Key? key,
    required this.eventDate,
    required this.eventName,
    required this.eventImage,
    required this.eventOrganization,
    required this.eventIsPaid,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultVerticalPadding + defaultHorizontalPadding,
      child: InkWell(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          child: Row(
            children: [
              Padding(
                padding: defaultHorizontalPadding,
                child: Stack(
                  children: [
                    Material(
                      elevation: 3,
                      child: Image.network(eventImage, height: 150, width: 150, fit: BoxFit.cover),
                    ),
                    !eventIsPaid
                        ? Positioned(
                            top: 10,
                            right: 0,
                            child: Container(
                              padding: defaultPadding / 2,
                              decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey)),
                              child: Text(
                                AppConstants.eventFreeText,
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(eventDate, style: Theme.of(context).textTheme.bodyText2),
                    Padding(
                      padding: defaultVerticalPadding,
                      child: Text(
                        eventName,
                        style: Theme.of(context).textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      eventOrganization,
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(AppConstants.eventCardShareIcon)),
                        IconButton(onPressed: () {}, icon: const Icon(AppConstants.eventCardFavoriteIcon)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
