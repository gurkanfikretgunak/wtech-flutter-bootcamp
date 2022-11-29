import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

class FavoriteOrganizersView extends StatelessWidget {
  const FavoriteOrganizersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: PaddingConstants.defaultPadding * 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Follow event organizers', style: Theme.of(context).textTheme.headline6),
                Padding(
                  padding: PaddingConstants.defaultVerticalPadding + PaddingConstants.defaultBottomPadding * 4,
                  child: Text('Be the first to know about great events from the top organizers in your area',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            color: Theme.of(context).primaryColorDark,
            child: Padding(
              padding: PaddingConstants.defaultPadding * 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Who to follow', style: Theme.of(context).textTheme.headline3),
                  Padding(
                    padding: PaddingConstants.defaultVerticalPadding + PaddingConstants.defaultBottomPadding * 4,
                    child: Text('Follow the most popular local organizers and get notified when they create events',
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const OrganizerFollowCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OrganizerFollowCard extends StatelessWidget {
  const OrganizerFollowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstants.defaultRightPadding,
      child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Theme.of(context).primaryColorLight),
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                Text(
                  'Organizer Name',
                  style: Theme.of(context).textTheme.headline6,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                    color: Colors.indigo,
                  )),
                  child: Text(
                    'Follow',
                    style: Theme.of(context).textTheme.button!.copyWith(color: Colors.indigo),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
