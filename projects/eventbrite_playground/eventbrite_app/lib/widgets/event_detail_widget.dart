import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/color_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/event_notifier.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

import '../core/init/utils/helper.dart';
import 'event/index.dart';

class EventDetailWidget extends StatelessWidget with PaddingConstants {
  EventDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Event? event = context.read<EventNotifier>().model;

    Logger().i(event);
    return event != null
        ? Scaffold(
            extendBodyBehindAppBar: true,
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
              ),
              height: kToolbarHeight / 2,
            ),
            floatingActionButton: Padding(
              padding: defaultHorizontalPadding * 2,
              child: CustomElevatedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                text: AppConstants.eventFabText,
                textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
              ),
            ),
            appBar: AppBar(
              backgroundColor: Colors.white70,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(AppConstants.eventCardShareIcon),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(AppConstants.eventCardFavoriteIcon),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(AppConstants.eventCardMoreIcon),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    event.image ?? '',
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: defaultPadding * 2,
                    child: Column(
                      children: [
                        Text(
                          event.name ?? '',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        ListTile(
                          minVerticalPadding: 30,
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(event.organizationImage ?? ''),
                          ),
                          title: Text(event.organization ?? '', style: Theme.of(context).textTheme.headline6),
                          trailing: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                              color: ColorConstants.textButtonColor,
                            )),
                            child: Text(
                              AppConstants.organizerFollowButtonText,
                              style:
                                  Theme.of(context).textTheme.button!.copyWith(color: ColorConstants.textButtonColor),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: const Icon(AppConstants.eventCardCalendarIcon),
                          title: Text(Helper.instance.dateFormatter(event).substring(0, 10),
                              style: Theme.of(context).textTheme.bodyText1),
                          subtitle: Text(Helper.instance.dateFormatter(event).substring(10),
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey)),
                        ),
                        event.isOnline ?? false
                            ? ListTile(
                                leading: const Icon(AppConstants.eventCardDisplayIcon),
                                title: Text(AppConstants.eventStatus, style: Theme.of(context).textTheme.bodyText1),
                              )
                            : const SizedBox(),
                        ListTile(
                          leading: const Icon(AppConstants.eventCardScheduleIcon),
                          title: Text(AppConstants.eventDuration, style: Theme.of(context).textTheme.bodyText1),
                        ),
                        ListTile(
                          leading: const Icon(AppConstants.ticketIcon),
                          title: event.isPaid ?? false
                              ? Text("\$${event.price}", style: Theme.of(context).textTheme.bodyText1)
                              : Text(AppConstants.eventFreeText, style: Theme.of(context).textTheme.bodyText1),
                          subtitle: Text(AppConstants.eventPlatform, style: Theme.of(context).textTheme.headline5),
                        ),
                        const Divider(),
                        EventAboutWidget(description: event.desc ?? ''),
                        const Divider(),
                        EventLocationWidget(event: event),
                        const Divider(),
                        EventOrganizerInfoWidget(event: event),
                        const Divider(),
                        EventTagsWidget(tags: AppConstants.eventTags),
                        EventSuggestionWidget(event: event)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        : const SizedBox(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}
