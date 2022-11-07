import 'package:app/widgets/custom.widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? customAppBar = true;
   return Scaffold(
    appBar: customAppBar
     ? CustomWidgets.customAppBar()
          : AppBar(
              leading: const Icon(Icons.menu),
              title: const Text('Page title'),
              actions: const [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.search),
                ),
                Icon(Icons.more_vert),
              ],
            ),
      extendBody: true,
      floatingActionButton: CustomWidgets.getFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        child: Column(
          children: [CustomWidgets.getBottomAppbarWidget()],
        ),
        color: Colors.amber,
      ),
      bottomNavigationBar: CustomWidgets.getBottomAppbarWidget(),
    );
  }
}

      
    

