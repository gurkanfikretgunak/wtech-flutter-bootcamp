import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:eventbrite_app/core/init/navigation/navigation_service.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget with PaddingConstants {
  ProfileMenu({
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
              onTap: () {
                NavigationService.instance.navigateToPage(routeName: headers[index]['route']);
              },
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
          padding: defaultHorizontalPadding * 2,
          child: const Divider(
            thickness: 1,
          ),
        );
      },
    );
  }
}
