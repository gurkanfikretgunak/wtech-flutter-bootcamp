import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/onboarding_load_widget_state.dart';
import '../../widgets/onboarding/tabbarview_child_widget.dart';

class OnbordingHomeView extends StatelessWidget {
  const OnbordingHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Image(
            image: AssetImage(
                context.watch<OnboardingLoadWidgetState>().currentImage),
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
                    Provider.of<OnboardingLoadWidgetState>(context,
                            listen: false)
                        .changeImageIndex(value);
                  },
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: const EdgeInsets.only(bottom: 10),
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
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Tab(text: 'Credit'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Tab(text: 'Money'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
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
