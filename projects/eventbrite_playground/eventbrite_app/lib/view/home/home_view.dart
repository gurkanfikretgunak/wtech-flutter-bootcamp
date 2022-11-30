import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:eventbrite_app/view/welcome/welcome_view.dart';
import 'package:eventbrite_app/widgets/custom_sliver_dropdown.dart';
import 'package:eventbrite_app/widgets/event_card_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO shared preferences ile isSelected değerini kontrol et
    bool isSelected = true;
    return Scaffold(
      body: isSelected ? const EventsView() : WelcomeView(),
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
