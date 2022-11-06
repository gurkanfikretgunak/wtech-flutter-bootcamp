import 'package:app/widgets/customWidgets/bottom_navigation_bar.dart';
import 'package:app/widgets/customWidgets/listtile.dart';
import 'package:app/widgets/data/listtile_data.dart';
import 'package:app/widgets/model/listtile_model.dart';
import 'package:flutter/material.dart';
import '../widgets/customWidgets/floating_Action_button.dart';
import '../widgets/customWidgets/input/input_widget.dart';
import '../widgets/customWidgets/scrools/scrools.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isAppBar = false;
  late List<ListtileModel> model;

  @override
  void initState() {
    super.initState();
    model = ListtileData.listtileItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      appBar: const _AppBar(),

      //isAppBar ? _AppBar() :  CustomAppBar(),
      // Floating Action ksımındaki ovallik body'nin yerini aldı
      extendBody: true,
      // Arkada kalan ovallik body ile aynı rengi aldı
      extendBodyBehindAppBar: true,

      bottomNavigationBar: const CustomButtonNavigationBar(),
      //bottomNavigationBar: const BottomAppBarWidget(),

      floatingActionButton: FloatingActionButtonWidget(
        changeAppBar: (appBar) {
          setState(() {
            isAppBar = appBar;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10) +
                const EdgeInsets.only(top: 10),
            child: ListTileWidget(model: model[index]),
          );
        },
      )),
    );
  }
}

class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
