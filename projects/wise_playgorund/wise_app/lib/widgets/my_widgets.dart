import 'package:flutter/material.dart';
import 'package:story/story.dart';
import 'package:wise_app/pages/login_page.dart';

import '../core/theme/provider_theme.dart';

class SplashFirst extends StatelessWidget {
  const SplashFirst({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: const Color.fromRGBO(46, 67 , 105, 1),
      child: Image.asset("assets/images/wise_app_logo.png"),
    );
  }
}

class SplashBottomButton extends StatelessWidget {
  const SplashBottomButton({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final SplashSecondWidget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Check our rates",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            )),
        SizedBox(height: 15,),
        SizedBox(
          width: widget.size.width - 30,
          height: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                backgroundColor:
                const Color.fromRGBO(46, 67, 105, 1),
              ),
              onPressed: () {},
              child: const Text(
                "Connect with Google",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )),
        ),
       const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: widget.size.width / 2.2,
              height: 55.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color.fromRGBO(73, 159, 216, 1),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: const Text("Log in")),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: widget.size.width / 2.2,
              height: 55.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color.fromRGBO(73, 159, 216, 1),
                  ),
                  onPressed: () {},
                  child: const Text("Register")),
            ),
          ],
        ),
      ],
    );
  }
}

class SplashStory extends StatelessWidget {
  const SplashStory({
    Key? key,
    required this.widget,
    required this.listStory,
    required this.indicatorAnimationController,
  }) : super(key: key);

  final SplashSecondWidget widget;
  final List<Image> listStory;
  final ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:widget.size.width,
      height:widget.size.height/1.5,
      child: StoryPageView(
        initialPage: 0,
        indicatorVisitedColor: Colors.white,
        indicatorUnvisitedColor: Colors.grey,
        backgroundColor: Color.fromRGBO(46, 67, 105, 1),
        itemBuilder: (context, pageIndex, storyIndex) {
          return Container(
              color: const Color.fromRGBO(46, 67, 105, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: widget.size.width,
                      height: 420,
                      child: listStory[storyIndex]),

                ],
              ));
        },
        pageLength: 1,
        storyLength: (int pageIndex) {
          return 5;
        },
        indicatorAnimationController: indicatorAnimationController,
        initialStoryIndex: (pageIndex) {
          if (pageIndex == 0) {
            return 1;
          }
          return 0;
        },
      ),
    );
  }
}

class SplashSecondWidget extends StatefulWidget {
  Size size;

  SplashSecondWidget(this.size);

  @override
  State<SplashSecondWidget> createState() => _SplashSecondWidgetState();
}

class _SplashSecondWidgetState extends State<SplashSecondWidget> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;
  final listStory = [
    Image.asset("assets/images/sp1.png"),
    Image.asset("assets/images/sp2.png"),
    Image.asset("assets/images/sp3.png"),
    Image.asset("assets/images/sp4.png"),
    Image.asset("assets/images/sp5.png"),
  ];
  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(46, 67, 105, 1),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SplashStory(widget: widget, listStory: listStory, indicatorAnimationController: indicatorAnimationController),
                SplashBottomButton(widget: widget,)
              ],
            ),
          ),
        ));
  }
}

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    Key? key,
    required this.size,
    required this.provider,
    required TextEditingController textEditingControllerEmail,
    required TextEditingController textEditingControllerPassword,
  })  : _textEditingControllerEmail = textEditingControllerEmail,
        _textEditingControllerPassword = textEditingControllerPassword,
        super(key: key);

  final Size size;
  final ThemeProvider provider;
  final TextEditingController _textEditingControllerEmail;
  final TextEditingController _textEditingControllerPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height - 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: provider.topLoginTextColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 18,
                          color: provider.loginEmailTextColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    controller: _textEditingControllerEmail,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.cancel)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2.0),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 18,
                          color: provider.loginPasswordTextColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    controller: _textEditingControllerPassword,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye_outlined)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2.0),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
                width: size.width,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue),
                        backgroundColor: const Color.fromRGBO(73, 159, 216, 1)),
                    onPressed: () {},
                    child: const Text("Log in"))),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Trouble logging in?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromRGBO(73, 159, 216, 1)),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPageBottomButton extends StatelessWidget {
  const LoginPageBottomButton({
    Key? key,
    required this.provider,
    required this.size,
  }) : super(key: key);

  final ThemeProvider provider;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Or log in with",
          style: TextStyle(
              fontSize: 17,
              color: provider.loginOtherOptionsTextColor),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              width: size.width / 3.5,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        color: provider.elevationButtonBorderColor),
                    backgroundColor:
                    provider.elevationButtonBackgroundColor,
                  ),
                  onPressed: () {},
                  child: Image.asset("assets/images/google.png")),
            ),
            SizedBox(
              height: 50,
              width: size.width / 3.5,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        color: provider.elevationButtonBorderColor),
                    backgroundColor:
                    provider.elevationButtonBackgroundColor,
                  ),
                  onPressed: () {},
                  child: Image.asset("assets/images/facebook.png")),
            ),
            SizedBox(
              height: 50,
              width: size.width / 3.5,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        width: 1,
                        color: provider.elevationButtonBorderColor),
                    backgroundColor:
                    provider.elevationButtonBackgroundColor,
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/apple.png",
                    color: provider.elevationButtonAppleColor,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}