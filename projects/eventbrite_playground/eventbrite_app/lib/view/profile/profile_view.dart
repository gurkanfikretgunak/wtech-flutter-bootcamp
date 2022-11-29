import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/provider/navbar_notifier.dart';
import 'package:eventbrite_app/core/init/provider/user_notifier.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

import '../../core/constants/navigation/navigation_constants.dart';
import '../../core/init/navigation/navigation_service.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    context.read<UserNotifier>().getUserById();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserNotifier>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: provider.isLogin ? const UserProfile() : const GuestProfile(),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> headers = [
      {'name': 'Notification Center', 'icon': Icons.notifications_outlined},
      {'name': 'Linked Accounts'},
      {'name': 'Following'},
      {'name': 'Ticket Issues'},
      {'name': 'Manage Events'},
      {'name': 'Credits'},
      {'name': 'Settings'},
    ];
    List<Map<String, dynamic>> stats = [
      {'name': 'Likes', 'number': 0},
      {'name': 'My Tickets', 'number': 0},
      {'name': 'Following', 'number': 0},
    ];
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileHeader(stats: stats),
                  ProfileMenu(headers: headers),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: PaddingConstants.defaultPadding,
            child: CustomElevatedButton(
              text: 'Log out',
              onPressed: () {
                context
                    .read<UserNotifier>()
                    .userLogout()
                    .then((value) => {context.read<NavbarNotifier>().updateIndex(0)});
              },
              color: Theme.of(context).backgroundColor,
              border: true,
              textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final List<Map<String, dynamic>> stats;

  const ProfileHeader({
    Key? key,
    required this.stats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserNotifier>(context);
    return Stack(
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
              padding: PaddingConstants.defaultTopPadding * 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${provider.user.name ?? ''} ${provider.user.surname ?? ''}',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      )
                    ],
                  ),
                  Padding(
                    padding: PaddingConstants.defaultVerticalPadding,
                    child: Text(
                      provider.user.email ?? '',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Logger().i('tapped $index');
                                  },
                                  child: Padding(
                                    padding: PaddingConstants.defaultHorizontalPadding * 3,
                                    child: Column(
                                      children: [
                                        Text(
                                          '${stats[index]['number']}',
                                          style: Theme.of(context).textTheme.headline1,
                                        ),
                                        Text(
                                          stats[index]['name'],
                                          style: Theme.of(context).textTheme.subtitle1,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return VerticalDivider(
                                  color: Theme.of(context).primaryColorLight,
                                  thickness: 1,
                                );
                              },
                              itemCount: stats.length),
                        ),
                      ],
                    ),
                  ),
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
            padding: PaddingConstants.defaultPadding,
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: const Icon(
              Icons.person,
              size: 80,
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.headers,
  }) : super(key: key);

  final List<Map<String, dynamic>> headers;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: headers.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: headers[index]['icon'] != null ? Icon(headers[index]['icon']) : null,
              title: Text(
                headers[index]['name'],
                style: Theme.of(context).textTheme.headline2,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: PaddingConstants.defaultHorizontalPadding * 2,
          child: const Divider(
            thickness: 1,
          ),
        );
      },
    );
  }
}

class GuestProfile extends StatelessWidget {
  const GuestProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> headers = ['Ticket Issues', 'Manage Events', 'Settings'];

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: headers.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(headers[index], style: Theme.of(context).textTheme.headline2),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  Padding(
                    padding: PaddingConstants.defaultHorizontalPadding * 2,
                    child: const Divider(
                      thickness: 1,
                    ),
                  )
                ],
              );
            },
          ),
        ),
        const Spacer(),
        const Divider(),
        Padding(
          padding: PaddingConstants.defaultPadding * 2,
          child: CustomElevatedButton(
            text: 'Log In',
            onPressed: () {
              NavigationService.instance.navigateToPage(routeName: NavigationConstants.getStartedPage);
            },
            color: Theme.of(context).primaryColor,
            textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
          ),
        ),
      ],
    );
  }
}
