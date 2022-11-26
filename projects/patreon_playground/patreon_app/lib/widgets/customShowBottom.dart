import 'package:flutter/material.dart';

Future<dynamic> customShowBottom(BuildContext context) {
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("data"),
            ),
            const Text("Patron"),
            Wrap(
              children: const [
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.black12,
                      child: Icon(
                        Icons.star_border_purple500_sharp,
                        color: Colors.black,
                      )),
                  title: Text('My Memberships'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.black12,
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                      )),
                  title: Text('Settings'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.black12,
                      child: Icon(
                        Icons.contact_support_outlined,
                        color: Colors.black,
                      )),
                  title: Text('Support'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            )
          ],
        )),
      );
    },
  );
}
