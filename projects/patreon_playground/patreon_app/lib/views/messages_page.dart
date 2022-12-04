import 'package:flutter/material.dart';
import '../core/themes/custom_theme.dart';
import '../widgets/customShowBottom.dart';
import '../widgets/templatewithButtonWidget.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 50,
        centerTitle: true,
        title: Text(
          "Messages",
          style: CustomTheme.customThemeData().textTheme.labelMedium,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                customShowBottom(context);
              },
              child: CircleAvatar(radius: 10, child: Image.network(""))),
        ),
      ),
      //body: const LoadingWidget(),
      body: Column(
        children: const [
          SizedBox(height: 50),
          TemplateWithButtonWidget(
              imagePath: "assets/messages.png",
              underImageText: "Connect with creators you support",
              buttonText: "Find creators"),
        ],
      ),
    );
  }
}
