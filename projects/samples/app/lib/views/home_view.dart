import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomWidgets.customAppBar(),
        body: const Center(
          child: SizedBox(
            width: 300,
            child: CardWidget(),
          ),
        ),
        bottomNavigationBar: CustomWidgets.customBottomNavBar());
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.red,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album, size: 70),
            title: Text('Ayşenur Perker', style: TextStyle(color: Colors.white)),
            subtitle: Text('Developer', style: TextStyle(color: Colors.white)),
          ),
          ButtonTheme(
            child: ButtonBar(
              children: <Widget>[
                TextButton(
                  child: const Text('Edit', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('Delete', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
