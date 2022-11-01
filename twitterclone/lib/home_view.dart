
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override 
  _HomeViewState createState() => _HomeViewState();

}

class _HomeViewState extends State<HomeView>{
  String _githubPhotoUrl = "https://avatars.githubusercontent.com/u/58955905?v=4";
  int defaultTabLength = 4;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: _fabButton,
      body: SafeArea(
        child: DefaultTabController(
          length: defaultTabLength,
          child: Column(
            children: <Widget>[
              _containerAppBar,
              _tabbarItems,
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context,index){
                    return Text("data");
                  },
                  ),
              )
              ],
          ),
        ),
      ),

    );
  }

  Widget get _fabButton => FloatingActionButton(onPressed: (){},child: Icon(Icons.adb));

  Widget get _appBar => AppBar(
    elevation: 0,
    centerTitle: false,
    title: _appBarItems,   
  );

  Widget get _containerAppBar => Container(
    height: 50,
    child: _appBar,

  );


  Widget get _appBarItems => Wrap(
    crossAxisAlignment: WrapCrossAlignment.center ,
    spacing: 10,
    children: <Widget>[
      CircleAvatar(backgroundImage: NetworkImage(_githubPhotoUrl)),
      Text("Home",style:titleTextStyle)
      ],
  );

  Widget get _tabbarItems => TabBar(
        tabs: <Widget> [
          Tab(icon: Icon(Icons.dashboard)),
          Tab(icon: Icon(Icons.radio)),
          Tab(icon: Icon(Icons.satellite)),
          Tab(icon: Icon(Icons.verified_user)),

        ],
      );
}

// ignore: prefer_const_constructors
final titleTextStyle = TextStyle(letterSpacing:1,fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black);