import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/customAppBar.dart';

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

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final bool isVisible = false;
  final controller = TextEditingController();
  List<User> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: "Search",
        w: 120,
        color: Colors.white,
        con: Icons.arrow_back,
        iColor: Colors.grey,
        press: () {
          Navigator.pushNamed(context, "/home");
        },
      ),
      body: SizedBox(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 40,
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
                      suffixIcon: controller.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                controller.clear();
                                users.clear();
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.black54,
                              ))
                          : null,
                      hintText: "Search for a creator",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12),
                      )),
                  onChanged: searchUser,
                ),
              ),
            ),
            Expanded(
              child: users.isNotEmpty && controller.text.isNotEmpty
                  ? ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];

                        return ListTile(
                          leading: const Icon(Icons.person),
                          title: Text(user.name),
                          subtitle: Text(user.info),
                        );
                      },
                    )
                  : controller.text.isNotEmpty
                      ? Text("No result for ${controller.text}")
                      : Column(
                          children: [
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
          ],
        ),
      ),
    );
  }

  searchUser(String query) {
    final suggestions = allUsers.where((user) {
      final name = user.name.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();

    setState(() => users = suggestions);
  }
}
