import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/templatewithoutButtonWidget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.8,
      child: Center(
          child: Column(
        children: const [
          Divider(color: Colors.grey),
          RefreshProgressIndicator(color: Colors.red),
          TemplateWithoutButtonWidget(
              imagePath: "assets/dog2.png",
              underImageText: "Just a moment while we get things ready...")
        ],
      )),
    );
  }
}
