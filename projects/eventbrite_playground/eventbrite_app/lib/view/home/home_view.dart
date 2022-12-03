import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/constants/navigation/navigation_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:eventbrite_app/core/init/provider/event_notifier.dart';
import 'package:eventbrite_app/core/init/utils/helper.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:eventbrite_app/view/welcome/welcome_view.dart';
import 'package:eventbrite_app/widgets/custom_sliver_dropdown.dart';
import 'package:eventbrite_app/widgets/event/index.dart';
import 'package:eventbrite_app/widgets/who_to_follow_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO shared preferences ile isSelected değerini kontrol et
    bool isSelected = true;
    return Scaffold(
      body: isSelected ? EventsView() : WelcomeView(),
    );
  }
}

class EventsView extends StatelessWidget with PaddingConstants {
  EventsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              elevation: 3,
              pinned: true,
              collapsedHeight: 90,
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: defaultHorizontalPadding,
                expandedTitleScale: 1.1,
                title: SliverDropdown(isScrolled: innerBoxIsScrolled),
              ),
            ),
          ];
        },
        body: FutureBuilder(
          future: Service.instance.getEvents(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<Event> users = snapshot.data ?? [];
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: defaultHorizontalPadding * 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppConstants.showcaseTitle, style: Theme.of(context).textTheme.headline3),
                          ShowCaseEventCard(
                            onTap: () {
                              context.read<EventNotifier>().saveModel(users[0]);
                              NavigationService.instance.navigateToPage(routeName: NavigationConstants.eventDetailPage);
                            },
                            // title: AppConstants.showcaseTitle,
                            event: users[0],
                            eventDate: Helper.instance.dateFormatter(users[0]),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      padding: defaultTopPadding,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: users.length - 1,
                      itemBuilder: (context, index) {
                        return EventCard(
                          onTap: () {
                            context.read<EventNotifier>().saveModel(users[index + 1]);
                            NavigationService.instance.navigateToPage(routeName: NavigationConstants.eventDetailPage);
                          },
                          eventDate: Helper.instance.dateFormatter(users[index + 1]),
                          eventImage: users[index + 1].image ?? '',
                          eventIsPaid: users[index + 1].isPaid ?? false,
                          eventName: users[index + 1].name ?? '',
                          eventOrganization: users[index + 1].organization ?? '',
                        );
                      },
                    ),
                    WhoToFollowWidget(),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
