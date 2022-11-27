import 'package:flutter/material.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/custom_information_card_widget.dart';
import '../widgets/rewards_card_widget.dart';
import '../widgets/title_and_button_widget.dart';

class RewardsView extends StatelessWidget {
  const RewardsView({super.key});

  @override
  Widget build(BuildContext context) {
    String amount = '0.00';
    List categories = [
      'Food & Drink',
      'Shopping',
      'Grocery',
      'Health..',
      'Food & Drink',
      'Shopping',
      'Grocery',
      'Health..'
    ];

    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: CustomAppbarWidget(
              preferredSizeHeight: MediaQuery.of(context).size.height / 15,
              leftWidget: ElevatedButton(
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
              rightWidgetList: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
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
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: CustomInformationCardWidget(
                      //TODO: Background image will add to CutomInformationCardWidget
                      title: const Text('Take your card to the next level',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      titleMargin: 150,
                      body: '',
                      isCloseButtonActive: true,
                      bottomRightWidget: null,
                      button: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        child: const Text(
                          'Explore bundles',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 25,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[300],
                                  shape: const StadiumBorder()),
                              child: Text(
                                categories[index],
                                style: const TextStyle(color: Colors.black),
                              )),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: TitleAndButtonWidget(
                      title: 'Explore Nearby',
                      buttonName: 'See all',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) =>
                          RewardsCardWidget(
                        image:
                            const AssetImage('assets/images/people-splash.png'),
                        leadingImage:
                            const AssetImage('assets/images/people-splash.png'),
                        title: 'Panda Sushi',
                        subtitle: 'Rue Sainte-Catherine E',
                        trailingWidget: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: 5,
                                children: const [
                                  Icon(
                                    Icons.auto_awesome,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                  Text('3%')
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: TitleAndButtonWidget(
                      title: 'Dine Out or Order In',
                      buttonName: 'See all',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) =>
                          RewardsCardWidget(
                        image:
                            const AssetImage('assets/images/people-splash.png'),
                        leadingImage:
                            const AssetImage('assets/images/people-splash.png'),
                        title: 'Panda Sushi',
                        subtitle: 'Rue Sainte-Catherine E',
                        trailingWidget: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: 5,
                                children: const [
                                  Icon(
                                    Icons.auto_awesome,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                  Text('3%')
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: ElevatedButton(
              onPressed: () {
                //Map will open to show the shop
              },
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Wrap(
                    spacing: 5,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: const [Icon(Icons.map), Text('Map')]),
              ),
            )));
  }
}
