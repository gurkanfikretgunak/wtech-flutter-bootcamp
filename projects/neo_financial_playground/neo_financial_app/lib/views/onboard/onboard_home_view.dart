import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/text_constants.dart';
import '../../core/provider/onboard_state.dart';
import '../../widgets/onboard/tabbar_view_child_widget.dart';

class OnbordHomeView extends StatelessWidget {
  const OnbordHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Image(
            image: AssetImage(context.watch<OnboardState>().currentImage),
            fit: BoxFit.cover,
          ),
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height / 3.5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: TabBar(
                  onTap: (value) {
                    Provider.of<OnboardState>(context, listen: false)
                        .changeImageIndex(value);
                  },
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: PaddingConstants.smallBottomPadding,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 4,
                      color: Colors.white,
                    ),
                  ),
                  isScrollable: true,
                  tabs: const [
                    Padding(
                      padding: PaddingConstants.largeVerticalPadding,
                      child: Tab(text: TextConstants.onboardTabBarStartLabel),
                    ),
                    Padding(
                      padding: PaddingConstants.largeVerticalPadding,
                      child: Tab(text: TextConstants.onboardTabBarEndLabel),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            //TODO: Text will come from mock api
            TabBarViewChildWidget(
              pageIndex: 0,
              headlineText: 'High cashback Mastercard® ',
              bodyText:
                  'Earn an average of 4% to 6%* cashback at thousand of local and national partners. ⓘ',
            ),
            TabBarViewChildWidget(
              pageIndex: 1,
              headlineText: 'Earn 2.25%* on every dollar ',
              bodyText:
                  'An account that actually earns you money. Earn more interest with no monthly fees and unlimited free transactions. Your money is yours -anytime. ⓘ',
            ),
          ],
        ),
      ),
    );
  }
}
