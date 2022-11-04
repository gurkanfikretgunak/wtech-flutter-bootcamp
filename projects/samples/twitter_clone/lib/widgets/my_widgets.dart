import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/core/theme_data/theme_data.dart';

class IconLabelButton extends StatelessWidget {
  const IconLabelButton({
    Key? key,
    required this.iconLabel,
  }) : super(key: key);

  final Widget iconLabel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const IconLabel(
        text: "5",
      ),
      onTap: () {},
    );
  }
}

class IconLabel extends StatelessWidget {
  const IconLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
  }
}

class FooterButtonList extends StatelessWidget {
  const FooterButtonList({
    Key? key,
    required Widget iconLabelButton,
  })  : _iconLabelButton = iconLabelButton,
        super(key: key);

  final Widget _iconLabelButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _iconLabelButton,
        _iconLabelButton,
        _iconLabelButton,
        _iconLabelButton,
      ],
    );
  }
}

class PlaceHolderField extends StatelessWidget {
  const PlaceHolderField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Placeholder(),
    );
  }
}

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    Key? key,
    required String avatar,
    required Widget placeHolderField,
    required Widget footerButtonList,
  })  : _avatar = avatar,
        _placeHolderField = placeHolderField,
        _footerButtonList = footerButtonList,
        super(key: key);

  final String _avatar;
  final Widget _placeHolderField;
  final Widget _footerButtonList;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(_avatar),
        ),
        title: Wrap(
          direction: Axis.horizontal,
          runSpacing: 5,
          children: [
            Text("Ahmet", style: CustomTheme().titleTextStyle),
            const Text(
                "Açıklama açıklama açıklama açıklama açıklama açıklama "),
            _placeHolderField,
            _footerButtonList
          ],
        ),
      ),
    );
  }
}

class ExpendedListView extends StatelessWidget {
  const ExpendedListView({
    Key? key,
    required this.listView,
  }) : super(key: key);

  final Widget listView;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: listView);
  }
}

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
    required this.scrollController,
    required this.listViewCard,
  }) : super(key: key);

  final ScrollController scrollController;
  final Widget listViewCard;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        controller: scrollController,
        itemBuilder: (context, index) {
          return listViewCard;
        });
  }
}

class ContainerAppBar extends StatelessWidget {
  const ContainerAppBar({
    Key? key,
    required this.isHeaderClose,
    required this.myAppBar,
  }) : super(key: key);

  final bool isHeaderClose;
  final Widget myAppBar;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isHeaderClose ? 0 : 50,
      child: myAppBar,
    );
  }
}

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
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
  }
}

class AppBarItems extends StatelessWidget {
  const AppBarItems({
    Key? key,
    required String avatar,
  })  : _avatar = avatar,
        super(key: key);

  final String _avatar;

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.appBarItems,
  }) : super(key: key);

  final Widget appBarItems;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: appBarItems,
    );
  }
}

class FabButton extends StatelessWidget {
  const FabButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}
