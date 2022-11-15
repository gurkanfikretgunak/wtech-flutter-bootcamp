import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import 'package:patreon_app/widgets/customBottomAppbar.dart';

class User {
  final String name;
  final String info;
  final IconData con;

  const User({required this.name, required this.info, required this.con});
}

const allUsers = [
  User(name: "Gökalp", info: "Developer", con: Icons.person),
  User(name: "Melih", info: "Developer", con: Icons.person),
  User(name: "Mete", info: "Developer", con: Icons.person),
];

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final controller = TextEditingController();
  List<User> users = allUsers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "FindCreators",
        w: 120,
        color: Colors.blue,
        con: Icons.person,
        iColor: Colors.white,
        press: () {},
      ),
      body: SizedBox(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.cancel,
                          color: Colors.black54,
                        )),
                    hintText: "Search for a creator",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    )),
                onChanged: searchUser,
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];

                return ListTile(
                  //leading: user.con,
                  title: Text(user.name),
                  subtitle: Text(user.info),
                );
              },
            )),
            Image.asset("assets/not_following.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 18),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: "You're not following anyone yet",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 27),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
   void searchUser(String query) {
    final suggestions = allUsers.where((user) {
      final name = user.name.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();

    setState(() => users = suggestions);
  }
}
