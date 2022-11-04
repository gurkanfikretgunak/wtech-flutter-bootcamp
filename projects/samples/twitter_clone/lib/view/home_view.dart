import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/my_widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isHeaderClose = false;
  double lastOffset = 0;
  final scrollController = ScrollController();
  final String _avatar = "assets/images/avatar2.jpg";

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset <= 0) {
        isHeaderClose = false;
      } else if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        isHeaderClose = true;
      } else {
        isHeaderClose = scrollController.offset > lastOffset ? true : false;
      }

      setState(() {
        lastOffset = scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FabButton(),
      body: SafeArea(
        child: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                ContainerAppBar(
                    isHeaderClose: isHeaderClose,
                    myAppBar: MyAppBar(
                        appBarItems: AppBarItems(
                      avatar: _avatar,
                    ))),
                const MyTabBar(),
                ExpendedListView(
                    listView: MyListView(
                  scrollController: scrollController,
                  listViewCard: ListViewCard(
                    placeHolderField: const PlaceHolderField(),
                    avatar: _avatar,
                    footerButtonList: const FooterButtonList(
                        iconLabelButton:
                            IconLabelButton(iconLabel: IconLabel(text: "5"))),
                  ),
                )),
              ],
            )),
      ),
    );
  }
}
