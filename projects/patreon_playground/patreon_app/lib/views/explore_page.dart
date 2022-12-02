import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:patreon_app/core/themes/custom_theme.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import '../core/data/models/user/user.dart';
import '../core/data/services/service.dart';
import '../widgets/customSearchListTile.dart';
import '../widgets/customShowBottom.dart';
import '../widgets/templatewithoutButtonWidget.dart';

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
        w: MediaQuery.of(context).size.width / 4,
        widget: InkWell(
            onTap: () {
              customShowBottom(context);
            },
            child: CircleAvatar(child: Image.network(""))),
      ),
      body: SizedBox(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
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
                          print(users);

                          return CustomSearchListTile(
                              image: user.image,
                              userName: user.name,
                              userInfo: user.info);
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
        final input = query.toLowerCase();
        return name!.contains(input);
      }).toList();
      setState(() => users = suggestions);
    });
  }
}
