import 'package:app/widgets/card.dart';
import 'package:app/widgets/customWidgets/bottom_navigation_bar.dart';
import 'package:app/widgets/customWidgets/buttons/buttons.dart';
import 'package:app/widgets/customWidgets/chips.dart';
import 'package:app/widgets/customWidgets/custom_appbar.dart';
import 'package:app/widgets/customWidgets/custom_material_banner.dart';
import 'package:flutter/material.dart';
import '../widgets/customWidgets/floating_Action_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isAppBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      appBar: isAppBar ? _appBar() : const CustomAppBar(),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            _customMaterialBanner(),
            Column(
              children: [
                _textButton(),
                _outlinedButton(),
                _elevatedButton(),
                const CardWidget(),
                const SingleChildScrollView(scrollDirection: Axis.horizontal, child: ChipWidget()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row _elevatedButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        CustomElevatedButton(),
        CustomElevatedIconButton(),
      ],
    );
  }

  Row _outlinedButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        CustomOutlinedButton(),
        CustomOutlinedIconButton(),
      ],
    );
  }

  Row _textButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: const [
      CustomTextButton(),
      CustomIconTextButton(),
    ]);
  }

  Container _customMaterialBanner() {
    return Container(
      color: Colors.orange.shade200,
      child: const Center(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomMaterialBanner(),
      )),
    );
  }

  AppBar _appBar() {
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
}
