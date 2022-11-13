import 'package:coursera/core/model/user.dart';
import 'package:coursera/core/services/user_service_retrofit.dart';
import 'package:coursera/widgets/button/custom_button_elevated.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LearnView extends StatefulWidget {
  const LearnView({super.key});

  @override
  State<LearnView> createState() => _LearnViewState();
}

class _LearnViewState extends State<LearnView> {
  late Future<User> futureUser;
  @override
  void initState() {
    super.initState();
    futureUser = UserServiceRetrofit().getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(
          context: context,
          leading: CustomTextButton(
            onPressed: () {},
            text: "Switch Catalog",
          ),
          isTrailing: true,
        ),
        body: Padding(
          padding: context.horizontalPaddingMedium,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder<User>(
                future: futureUser,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.name!);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  return const CircularProgressIndicator();
                },
              ),
              const CustomText(
                text: "Learn",
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              context.emptySizedHeightBoxNormal,
              const Center(
                child: Image(
                  image: AssetImage("assets/learn_page_image_1.png"),
                ),
              ),
              const CustomText(
                text: "You haven't enrolled in anycourses (yet)",
                maxLines: 3,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              const CustomText(
                text: "Start by enrolling in a course and learn something new.",
                maxLines: 3,
                textAlign: TextAlign.center,
                fontSize: 20,
              ),
              context.emptySizedHeightBoxNormal,
              CustomElevatedButton(
                onPressed: () {},
                text: "Explore courses",
              ),
              context.emptySizedHeightBoxNormal,
            ],
          ),
        ),
      ),
    );
  }
}
