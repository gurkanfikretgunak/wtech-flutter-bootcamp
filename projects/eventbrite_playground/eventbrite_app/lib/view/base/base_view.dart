import 'package:eventbrite_app/core/init/provider/navbar_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) => {FlutterNativeSplash.remove()});
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavbarNotifier>(context);
    return Scaffold(
      body: provider.items[provider.currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        items: provider.items.map((e) => BottomNavigationBarItem(icon: Icon(e.icon), label: e.name)).toList(),
        currentIndex: provider.currentIndex,
        onTap: provider.updateIndex,
      ),
    );
  }
}
