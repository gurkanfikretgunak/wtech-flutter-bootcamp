import 'package:flutter/material.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import 'package:patreon_app/widgets/customBottomAppbar.dart';
import 'package:patreon_app/widgets/templatewithoutButtonWidget.dart';

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
  final bool isVisible = false;
  final controller = TextEditingController();
  List<User> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: "Find creators",
        w: 110,
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
                height: 43,
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: CustomTheme.customThemeData()
                            .textTheme
                            .displayMedium
                            ?.color,
                      ),
                      suffixIcon: controller.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                controller.clear();
                                users.clear();
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: CustomTheme.customThemeData()
                                    .textTheme
                                    .displayMedium
                                    ?.color,
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
                        : const TemplateWithoutButtonWidget(
                            imagePath: "assets/not_following.png",
                            underImageText: "You're not following anyone yet",
                          )),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 1),
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
