import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/custom_bottom_navigation_bar_widget.dart';
import '../../widgets/custom_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double dynamicSize = MediaQuery.of(context).size.width;
    String amount = '0.00';

    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: dynamicSize / 3,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                child: Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    const Icon(Icons.auto_awesome),
                    Text('CA\$$amount'),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            actions: [
              CircleAvatar(
                backgroundColor: Colors.black12,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('Get your first product',
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                        const Text(
                            'Welcome! It\'ll take just a few minutes to apply for your first product.'),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Explore Products'),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.blue),
                              child: const Text('Show all'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: dynamicSize - 50,
                        child: const CustomCardWidget(
                          image: 'assets/images/homepage-card.jpg',
                          imageLabel: 'Neo Card',
                          title: 'Get Canada\'s best cashback card\u{00B9}',
                          text:
                              'Earn an average of 5%\u{00B2} back from your everyday spending',
                          buttonName: 'Get',
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          bottomNavigationBar: const CustomBottomNavBar(),
        ));
  }
}
