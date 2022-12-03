import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app/padding_constants.dart';

class ShowCaseEventCard extends StatelessWidget with PaddingConstants {
  final Event event;
  final String eventDate;
  final void Function()? onTap;
  ShowCaseEventCard({super.key, required this.event, required this.eventDate, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: defaultVerticalPadding * 2,
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        event.image ?? '',
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: defaultHorizontalPadding * 2 + defaultVerticalPadding,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    eventDate,
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    event.name ?? '',
                                    style: Theme.of(context).textTheme.headline6,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    event.organization ?? '',
                                    style: Theme.of(context).textTheme.subtitle1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(AppConstants.eventCardShareIcon),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(AppConstants.eventCardFavoriteIcon),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          event.isPaid ?? false
              ? const SizedBox()
              : Positioned(
                  top: 30,
                  right: 0,
                  child: Container(
                    padding: defaultPadding / 2,
                    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey)),
                    child: Text(
                      AppConstants.eventFreeText,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
