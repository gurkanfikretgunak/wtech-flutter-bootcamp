import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/templatewithButtonWidget.dart';

class NotFollowingWidget extends StatelessWidget {
  const NotFollowingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      child: Center(
          child: Column(
        children: const [
          Divider(
            color: Colors.grey,
          ),
          TemplateWithButtonWidget(
            imagePath: "assets/not_following.png",
            underImageText: "You're not following anyone yet",
            buttonText: "Find some creators",
          )
        ],
      )),
    );
  }
}
