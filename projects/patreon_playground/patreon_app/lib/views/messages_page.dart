import 'package:flutter/material.dart';
import '../widgets/customAppBar.dart';
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
      appBar: CustomAppBar(
        title: "Messages",
        w: MediaQuery.of(context).size.width / 3.5,
        widget: InkWell(
            onTap: () {
              customShowBottom(context);
            },
            child: CircleAvatar(child: Image.network(""))),
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
