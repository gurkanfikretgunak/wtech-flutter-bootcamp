import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:patreon_app/core/data/models/user/user.dart';
import 'package:patreon_app/core/data/services/service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

Future<dynamic> customShowBottom(BuildContext context) {
  Dio dio = Dio();
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
    ),
    backgroundColor: Colors.white,
    context: context,
    builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.width * 0.75,
        child: Center(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 30),
            ),
            const Text("User Name"),
            const Text("Patron"),
            Wrap(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/membership");
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.star_border_purple500_sharp,
                          color: Colors.black,
                        )),
                    title: Text('My Memberships'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.settings,
                          color: Colors.black,
                        )),
                    title: Text('Settings'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _launchUrl("https://support.patreon.com/hc/en-us");
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.contact_support_outlined,
                          color: Colors.black,
                        )),
                    title: Text('Support'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            )
          ],
        )),
      );
    },
  );
}
