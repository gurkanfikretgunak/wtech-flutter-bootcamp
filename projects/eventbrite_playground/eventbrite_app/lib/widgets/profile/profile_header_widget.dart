import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/model/user/user.dart';
import 'package:flutter/material.dart';

import 'profile_stats_widget.dart';

class ProfileHeader extends StatelessWidget with PaddingConstants {
  final List<Map<String, dynamic>> stats;
  final User? user;

  ProfileHeader({
    Key? key,
    required this.stats,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return user != null
        ? Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Theme.of(context).primaryColorLight,
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Container(
                    color: Theme.of(context).primaryColorDark,
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    padding: defaultTopPadding * 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${user!.name} ${user!.surname}",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            )
                          ],
                        ),
                        Padding(
                          padding: defaultVerticalPadding,
                          child: Text(
                            user!.email ?? "",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        ProfileStats(defaultHorizontalPadding: defaultHorizontalPadding, stats: stats),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Container(
                  padding: defaultPadding,
                  decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.person,
                    size: 80,
                  ),
                ),
              ),
            ],
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
