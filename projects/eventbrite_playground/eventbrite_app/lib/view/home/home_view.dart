import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:eventbrite_app/view/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> logged() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? id = prefs.getString('id');
      Logger().i("home-view id: $id");
    }

    logged();
    bool isSelected = true;
    return Scaffold(
      body: isSelected ? const EventsView() : const WelcomeView(),
    );
  }
}

class EventsView extends StatelessWidget {
  const EventsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              collapsedHeight: 90,
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.1,
                centerTitle: true,
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
              return ListView.builder(
                itemCount: users!.length,
                itemBuilder: (context, index) {
                  return EventCard(
                    eventDate: users[index].startTime,
                    eventImage: users[index].image,
                    eventName: users[index].name,
                    eventOrganization: users[index].organization,
                  );
                },
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

class EventCard extends StatelessWidget {
  final String? eventDate;
  final String? eventName;
  final String? eventImage;
  final String? eventOrganization;

  const EventCard({
    Key? key,
    required this.eventDate,
    required this.eventName,
    required this.eventImage,
    required this.eventOrganization,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstants.defaultPadding,
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
                      padding: PaddingConstants.defaultVerticalPadding,
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
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverDropdown extends StatelessWidget {
  final bool isScrolled;
  const SliverDropdown({
    Key? key,
    required this.isScrolled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstants.defaultHorizontalPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          !isScrolled ? Text('Find events in', style: Theme.of(context).textTheme.headline5) : const SizedBox(),
          DropdownButton(
            value: 1,
            isExpanded: true,
            icon: const Icon(Icons.expand_more),
            style: Theme.of(context).textTheme.headline3,
            items: const [
              DropdownMenuItem(value: 1, child: Text('Online Events')),
              DropdownMenuItem(value: 2, child: Text('Nearby Events')),
            ],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
