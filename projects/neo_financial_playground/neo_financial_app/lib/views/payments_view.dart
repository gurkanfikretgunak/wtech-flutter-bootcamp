import 'package:flutter/material.dart';
import '../widgets/custom_icon_button_with_label_widget.dart';
import '../widgets/custom_information_card_widget.dart';

class PaymentsView extends StatelessWidget {
  const PaymentsView({super.key});

  @override
  Widget build(BuildContext context) {
    const String tabBarLeftLabelName = 'Transfers';
    const String tabBarRightLabelName = 'Scheduled';
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: [
                      Tab(text: tabBarLeftLabelName),
                      Tab(text: tabBarRightLabelName),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        right: 15.0,
                        left: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 25,
                            children: const [
                              CustomIconButtonWithLabelWidget(
                                label: 'Send',
                                icon: Icons.upgrade,
                              ),
                              CustomIconButtonWithLabelWidget(
                                label: 'Request',
                                icon: Icons.vertical_align_bottom,
                              ),
                              CustomIconButtonWithLabelWidget(
                                label: 'Pay a bill',
                                icon: Icons.receipt,
                              ),
                            ],
                          ),
                          CustomInformationCardWidget(
                            title: const Text('Autodeposit',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            titleMargin: 0,
                            body:
                                'Get Interac e-Transfers® deposited directly into your account.',
                            color: Colors.blue.shade100,
                            button: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black),
                                child: Row(
                                  children: const [
                                    Text('Register'),
                                    Icon(Icons.arrow_forward)
                                  ],
                                )),
                            bottomRightWidget: null,
                            isCloseButtonActive: true,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Recent payees'),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.blue),
                                child: const Text('See all'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //TODO: Listbuilder will use
                    Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.black,
                              child: Text('ZL')),
                          title: Text('Zheng Jun Dexter Lee'),
                          trailing: Text('(You)'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: const [
                    Text('Scheduled'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
