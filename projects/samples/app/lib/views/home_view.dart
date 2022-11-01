import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView(ScrollController scrollController, {Key? key})
      : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String _photoUrl =
      "https://cdn.pixabay.com/photo/2017/04/01/21/06/portrait-2194457_960_720.jpg";
  int defaultTabLength = 4;
  String _RandomImage =
      "https://cdn.pixabay.com/photo/2014/12/16/22/25/sunset-570881__340.jpg";
  String dumyTweet = "Açıklama açıklama açıklama açıklama ";
  bool isHeaderClose = false;
  double lastOfset = 0;
  late ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset <= 0) {
        isHeaderClose = false;
      } else if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        isHeaderClose = true;
      } else {
        isHeaderClose = scrollController.offset > lastOfset ? true : false;
      }

      setState(() {
        lastOfset = scrollController.offset;
      });
      print(scrollController.offset);
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: _fabButton, body: _listview);
  }

  Widget get _fabButton => FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.adb),
      );
  Widget get _listview => ListView.builder(
        controller: scrollController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return _listViewCard;
        },
      );
  Widget get _listViewCard => Card(
          child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(_RandomImage),
        ),
        title: Wrap(
          direction: Axis.horizontal,
          runSpacing: 5,
          children: <Widget>[
            _listCardTitle("hello"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dumyTweet,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 5,
                ),
                _placeHolderField,
              ],
            ),
            _footerButtomRow,
          ],
        ),
      ));

  Widget _listCardTitle(String text) => Text(
        text,
        style: titleTextStyle,
      );
  Widget get _placeHolderField => Container(
        height: 100,
        child: Placeholder(),
      );
  Widget get _footerButtomRow => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _iconLabelButton,
          _iconLabelButton,
          _iconLabelButton,
          _iconLabelButton
        ],
      );
  Widget _iconLabel(String text) => Wrap(
        spacing: 5,
        children: [
          Icon(
            Icons.comment,
            color: CupertinoColors.systemGrey,
          ),
          Text(text)
        ],
      );
  Widget get _iconLabelButton => InkWell(
        child: _iconLabel("1"),
        onTap: () {},
      );
}

final titleTextStyle = TextStyle(
    letterSpacing: 1,
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.black);
