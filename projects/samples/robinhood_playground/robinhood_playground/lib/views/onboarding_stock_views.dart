import 'package:flutter/material.dart';
import 'package:robinhood_playground/product/custom_divider.dart';
import 'package:robinhood_playground/product/general_button.dart';

class OnBoardingStock extends StatelessWidget {
  const OnBoardingStock({super.key});
  final String buttonText = 'Get Your Free Stock';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _OnBoardingAppBar(),
      body: Padding(
        padding: _PagePadding().generalHorizontal,
        child: Column(children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: const _ImageContainer(),
          ),
          Padding(
            padding: _PagePadding().titlePadding,
            child: const _BaseTitle(),
          ),
          Padding(
            padding: _PagePadding().informationTextTop,
            child: const _DescriptionText(),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.17),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: GenerealButton(
                  onPressed: () {},
                  text: buttonText,
                  backgroundColor: _AppBarItemColor().bitterDandelion),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: CustomDivider(dividerColor: BottomDivider.black.getColor()),
          )
        ]),
      ),
    );
  }
}

class _DescriptionText extends StatelessWidget {
  const _DescriptionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          DescriptionText().text1,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(DescriptionText().text2),
              Text(
                DescriptionText().text3,
                style: TextStyle(color: _AppBarItemColor().bitterDandelion),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _BaseTitle extends StatelessWidget {
  const _BaseTitle({
    Key? key,
  }) : super(key: key);
  final String text = 'There\'s Free Stock Waiting\n For You';

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
    );
  }
}

class _ImageContainer extends StatelessWidget {
  const _ImageContainer({
    Key? key,
  }) : super(key: key);
  final String path = 'assets/page_two_copy.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(path))),
    );
  }
}

class _OnBoardingAppBar extends StatelessWidget with PreferredSizeWidget {
  const _OnBoardingAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.clear_outlined),
        color: _AppBarItemColor().bitterDandelion,
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: _PagePadding().lognTextPadding,
          child: const _LoginText(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _LoginText extends StatelessWidget {
  const _LoginText({
    Key? key,
  }) : super(key: key);

  final String _login = 'Log in';

  @override
  Widget build(BuildContext context) {
    return Text(
      _login,
      style: Theme.of(context).textTheme.headline6?.copyWith(
          color: _AppBarItemColor().bitterDandelion,
          fontWeight: FontWeight.normal),
    );
  }
}

class _AppBarItemColor {
  final Color bitterDandelion = const Color.fromARGB(255, 96, 196, 60);
}

class _PagePadding {
  final EdgeInsets generalHorizontal =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets titlePadding = const EdgeInsets.only(top: 50);
  final EdgeInsets imageTop = const EdgeInsets.only(top: 30);
  final EdgeInsets informationTextTop = const EdgeInsets.only(top: 10);
  final EdgeInsets lognTextPadding =
      const EdgeInsets.symmetric(horizontal: 10) +
          const EdgeInsets.only(top: 10);
}

class DescriptionText {
  final String text1 = 'Yo\'re almost there! You\'ll get free stock when. ';
  final String text2 = 'you join.';
  final String text3 = ' Learn More';
}
