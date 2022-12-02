import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:patreon_app/core/data/services/service.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import 'package:patreon_app/widgets/customSearchListTile.dart';
import 'package:patreon_app/widgets/templatewithoutButtonWidget.dart';
import '../core/data/models/user/user.dart';
import '../core/themes/custom_theme.dart';

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
        widget: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/navigate");
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              )),
        ),
      ),
      body: SizedBox(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 50,
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
                      prefixIcon: Icon(Icons.search,
                          color: CustomTheme.customThemeData()
                              .textTheme
                              .displayLarge
                              ?.color),
                      suffixIcon: controller.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                controller.clear();
                                users.clear();
                                setState(() {});
                              },
                              icon: Icon(Icons.cancel,
                                  color: CustomTheme.customThemeData()
                                      .textTheme
                                      .displayLarge
                                      ?.color))
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

                          return CustomSearchListTile(
                            image: user.image,
                            userName: user.name,
                            userInfo: user.info,
                            onTap: () {
                              Navigator.pushNamed(context, "/userPage");
                            },
                          );
                        },
                      )
                    : controller.text.isNotEmpty
                        ? Text("No result for ${controller.text}")
                        : const TemplateWithoutButtonWidget(
                            imagePath: "assets/not_following.png",
                            underImageText: "You're not following anyone yet")),
          ],
        ),
      ),
    );
  }

  searchUser(String query) {
    Dio dio = Dio();
    NetworkService(dio).getUsers().then((value) {
      List<User> data = value;
      final suggestions = data.where((user) {
        final name = user.name?.toLowerCase();
        final input = query.toLowerCase().trim();
        return name!.contains(input);
      }).toList();
      setState(() => users = suggestions);
    });
  }
}
