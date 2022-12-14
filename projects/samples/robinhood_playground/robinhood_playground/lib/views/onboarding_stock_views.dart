import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/widget/custom_divider.dart';
import 'package:robinhood_playground/core/widget/button/general_button.dart';
import 'package:robinhood_playground/product/navigator/navigator_routes.dart';
import 'package:robinhood_playground/widget/basetitle_stock_view.dart';
import 'package:robinhood_playground/widget/description_text_stock_view.dart';
import 'package:robinhood_playground/widget/image_stock_view.dart';

import '../core/constant/padding.dart';

class OnBoardingStock extends StatelessWidget {
  const OnBoardingStock({super.key});
  final String buttonText = 'Get Your Free Stock';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _OnBoardingAppBar(),
      body: Padding(
        padding: GeneralPadding().generalHorizontal,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: const ImageContainerStock()),
          Padding(
            padding: _PagePadding().titlePadding,
            child: const BaseTitle(),
          ),
          Padding(
              padding: _PagePadding().informationTextTop,
              child: const DescriptionTextStock()),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.18),
            child: SizedBox(
              child: GenerealButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(NavigateRoutes.enterview.name);
                  },
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
        onPressed: () {
          debugPrint('Çıkış');
        },
      ),
      actions: [
        Padding(
          padding: _PagePadding().lognTextPadding,
          child: InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(NavigateRoutes.login.name),
              child: const _LoginText()),
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
  final EdgeInsets titlePadding = const EdgeInsets.only(top: 50);
  final EdgeInsets imageTop = const EdgeInsets.only(top: 30);
  final EdgeInsets informationTextTop = const EdgeInsets.only(top: 10);
  final EdgeInsets lognTextPadding =
      const EdgeInsets.symmetric(horizontal: 10) +
          const EdgeInsets.only(top: 10);
}
