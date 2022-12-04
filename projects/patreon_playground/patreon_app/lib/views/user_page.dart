import 'package:flutter/material.dart';

import '../core/themes/custom_theme.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "User Name",
          style: CustomTheme.customThemeData().textTheme.labelMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/navigate");
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.grey,
              )),
        ],
      ),
      body: Column(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: Image.network(
                  "https://media-exp1.licdn.com/dms/image/C5616AQGPEiI4G1RQgA/profile-displaybackgroundimage-shrink_200_800/0/1619455639522?e=2147483647&v=beta&t=W7xL8p-4v9CNeC5nzTrJ-tvsMWlsKDwvJF3HKZrCPUU"),
            ),
            const CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/D4D03AQGomWCz5QmOBw/profile-displayphoto-shrink_800_800/0/1666016222737?e=2147483647&v=beta&t=T5GyPj07QNac7PkNqbD1NIRgId8o_tJpO0dXnMa8KCE"),
            ),
          ],
        )
      ]),
    );
  }
}
