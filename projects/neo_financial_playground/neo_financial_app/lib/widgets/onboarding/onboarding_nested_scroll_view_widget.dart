import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardingNestedScrollViewWidget extends StatefulWidget {
  String imgUrl;
  String headlineText;
  String bodyText;
  OnboardingNestedScrollViewWidget(
      {super.key,
      required this.imgUrl,
      required this.headlineText,
      required this.bodyText});
  final String sliverBarLeftButtonName = 'Credit';
  final String sliverBarRightButtonName = 'Money';

  @override
  State<OnboardingNestedScrollViewWidget> createState() =>
      _OnboardingNestedScrollViewWidgetState();
}

class _OnboardingNestedScrollViewWidgetState
    extends State<OnboardingNestedScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.imgUrl,
                fit: BoxFit.cover,
              ),
              title: Row(
                children: [
                  TextButton(
                    child: Text(widget.sliverBarLeftButtonName),
                    onPressed: () {
                      //TODO: Here will be in provider
                      setState(() {
                        widget.imgUrl =
                            'assets/images/onboarding-background1.jpg';
                        widget.headlineText = 'High cashback Mastercard® ';
                        widget.bodyText =
                            'Earn an average of 4% to 6%* cashback at thousand of local and national partners. ⓘ';
                      });
                    },
                  ),
                  TextButton(
                    child: Text(widget.sliverBarRightButtonName),
                    onPressed: () {
                      //TODO: Here will be in provider
                      setState(() {
                        widget.imgUrl =
                            'assets/images/onboarding-background2.jpg';
                        widget.headlineText = 'Earn 2.25%* on every dollar ';
                        //TODO: onSubmit will add
                        widget.bodyText =
                            'An account that actually earns you money. Earn more interest with no monthly fees and unlimited free transactions. Your money is yours -anytime. ⓘ';
                      });
                    },
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.black,
            expandedHeight: MediaQuery.of(context).size.height.toDouble() / 3,
            floating: true,
            pinned: true,
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.headlineText,
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 20,
            ),
            Text(widget.bodyText,
                style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            // icon size
            Center(
              child: Column(
                children: [
                  //TODO: Arrow icon will be update as long arrow
                  const Icon(Icons.keyboard_arrow_up),
                  //TODO: when click the learn more, page will slide and arrow will be invisible
                  OutlinedButton(
                      onPressed: () {}, child: const Text('Learn more')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
