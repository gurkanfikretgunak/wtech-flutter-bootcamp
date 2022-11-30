import 'package:eventbrite_app/core/constants/app/app_constants.dart';
import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:eventbrite_app/view/welcome/welcome_view.dart';
import 'package:eventbrite_app/widgets/custom_sliver_dropdown.dart';
import 'package:eventbrite_app/widgets/event_card_widget.dart';
import 'package:eventbrite_app/widgets/who_to_follow_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
              final List<Event>? users = snapshot.data;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: defaultHorizontalPadding * 2,
                        child: Text('Online Events', style: Theme.of(context).textTheme.headline3)),
                    Padding(
                      padding: defaultVerticalPadding * 2 + defaultHorizontalPadding * 2,
                      child: Card(
                          margin: EdgeInsets.zero,
                          elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                users![0].image ?? '',
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
                                            dateFormatter(users, 0),
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),
                                          Text(
                                            "${users[0].name}",
                                            style: Theme.of(context).textTheme.headline6,
                                          ),
                                          Text(
                                            users[0].organization ?? '',
                                            style: Theme.of(context).textTheme.subtitle1,
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
                          )),
                    ),
                    ListView.builder(
                      padding: defaultTopPadding,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: users.length - 1,
                      itemBuilder: (context, index) {
                        return EventCard(
                          eventDate: dateFormatter(users, index + 1),
                          eventImage: users[index + 1].image,
                          eventName: users[index + 1].name,
                          eventOrganization: users[index + 1].organization,
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

  String dateFormatter(List<Event> users, int index) {
    DateTime date = DateTime.parse(users[index].startTime ?? '');
    String formattedDate = DateFormat('E, MMM d HH:mm').format(date);
    return formattedDate;
  }
}
