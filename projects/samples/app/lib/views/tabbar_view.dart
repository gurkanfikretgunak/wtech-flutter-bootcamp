import 'package:app/views/home_view.dart';
import 'package:flutter/material.dart';

class TwitterTabbarView extends StatefulWidget {
  const TwitterTabbarView({Key? key}) : super(key: key);

  @override
  State<TwitterTabbarView> createState() => _TwitterTabbarViewState();
}

class _TwitterTabbarViewState extends State<TwitterTabbarView> {
  bool isHeaderClose = false;
  String _photoUrl =
      "https://cdn.pixabay.com/photo/2013/02/21/19/10/baby-84626_960_720.jpg";
  late ScrollController scrollController;
  double lastOffset = 0;

  get isScrollable => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController = ScrollController();

    scrollController.addListener(() {
      print(scrollController.offset);
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

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: _bottomAppBar,
        body: Column(
          children: [
            _containerAppbar,
            _tabbarViews,
          ],
        ),
      ),
    );
  }

  Widget get _tabbarViews => Expanded(
          child: TabBarView(
        children: [
          HomeView(scrollController),
          Text("asdasd"),
          Text("asdasd"),
          Text("asdasd"),
        ],
      ));
  Widget get _bottomAppBar => BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: _tabbarItems,
      );

  Widget get _containerAppbar => AnimatedContainer(
        duration: Duration(microseconds: 500),
        height: isHeaderClose ? 0 : MediaQuery.of(context).size.height * .12,
        child: _appBar,
      );

  Widget get _appBar => AppBar(
        elevation: 0,
        centerTitle: false,
        title: _appBarItems,
        // bottom: TabBar(tabs: <Widget>[]),
      );

  Widget get _appBarItems => Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(_photoUrl)),
          _emptyWidht,
          Expanded(child: _centerAppBarWidget),
          _emptyWidht,
          Icon(
            Icons.access_alarm,
            color: Colors.blue,
          )
        ],
      );
  Widget get _emptyWidht => SizedBox(
        width: 20,
      );
  Widget get _centerAppBarWidget => currentIndex == 1
      ? _searchTextField
      : Text("Home", style: titleTextStyle);
  Widget get _searchTextField => TextField(
      maxLines: 1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        hintText: "Search Twitter",
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        filled: true,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ));

  OutlineInputBorder get outlineInputBorder => OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(25));

  Widget get _tabbarItems => TabBar(tabs: <Widget>[
        const Tab(
          icon: Icon(Icons.home),
        ),
        const Tab(
          icon: Icon(Icons.search),
        ),
        const Tab(
          icon: Icon(Icons.satellite),
        ),
        const Tab(
          icon: Icon(Icons.verified_user),
        ),
      ]);
}

final titleTextStyle = TextStyle(
    letterSpacing: 1,
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.black);
