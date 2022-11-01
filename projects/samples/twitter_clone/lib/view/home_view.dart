import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/my_widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isHeaderClose=false;
  double lastOffset=0;
  final  scrollController=ScrollController();

  @override
  void initState() {
    super.initState();


   scrollController.addListener(() {

     if(scrollController.offset<=0){
       isHeaderClose=false;
     }
     else if(scrollController.offset>=scrollController.position.maxScrollExtent){
       isHeaderClose=true;
     }
     else{
       isHeaderClose=scrollController.offset>lastOffset?true:false;
     }


     setState(() {
       lastOffset=scrollController.offset;
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
      floatingActionButton: MyWidgets(scrollController,isHeaderClose).fabButton,
      body: SafeArea(
        child: DefaultTabController(
            length: 4,
            child: Column(
              children: [
               MyWidgets(scrollController,isHeaderClose).containerAppBar,
                MyWidgets(scrollController,isHeaderClose).myTabBar,
                MyWidgets(scrollController,isHeaderClose). expendedListView
              ],
            )),
      ),
    );
  }
}
