import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/core/theme_data/theme_data.dart';

class MyWidgets {
  ScrollController scrollController;
  bool isHeaderClose;

  MyWidgets(this.scrollController,this.isHeaderClose);

  String _avatar = "assets/images/avatar2.jpg";
  Widget get fabButton => FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      );
  Widget get myAppBar => AppBar(
        elevation: 0,
        centerTitle: false,
        title: appBarItems,
      );
  Widget get appBarItems => Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(_avatar),
          ),
          Text(
            "Home",
            style: CustomTheme().titleTextStyle,
          ),
        ],
      );

  Widget get myTabBar =>const TabBar(
        tabs: [
          Tab(
              icon: Icon(
            Icons.home,
          )),
          Tab(
              icon: Icon(
            Icons.search,
          )),
          Tab(
              icon: Icon(
            Icons.ac_unit_sharp,
          )),
          Tab(
              icon: Icon(
            Icons.email,
          )),
        ],
      );

  Widget get containerAppBar => AnimatedContainer(
    duration: Duration(milliseconds: 300),
        height: isHeaderClose?0:50,
        child: myAppBar,
      );

  Widget get listView => ListView.builder(
      itemCount: 10,
      controller: scrollController,
      itemBuilder: (context, index) {
        return listViewCard;
      });

  Widget get expendedListView => Expanded(child: listView);

  Widget get listViewCard => Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(_avatar),
          ),
          title: Wrap(
            direction: Axis.horizontal,
            runSpacing: 5,
            children: [
              Text("Ahmet", style: CustomTheme().titleTextStyle),
              const Text("Açıklama açıklama açıklama açıklama açıklama açıklama "),
              _placeHolderField,
              _footerButtonList
            ],
          ),
        ),
      );

  Widget get _placeHolderField => Container(
        height: 100,
        child: Placeholder(),
      );

  Widget get _footerButtonList=> Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _iconLabelButton,
      _iconLabelButton,
      _iconLabelButton,
      _iconLabelButton,
    ],
  );

  Widget _iconLabel(String text) => Wrap(
        spacing: 5,
        children: [
         const Icon(
            Icons.comment,
            size: 25,
            color: CupertinoColors.inactiveGray,
          ),
          Text(text),
        ],
      );

  Widget get _iconLabelButton => InkWell(
        child: _iconLabel("5"),
        onTap: () {},
      );
}
