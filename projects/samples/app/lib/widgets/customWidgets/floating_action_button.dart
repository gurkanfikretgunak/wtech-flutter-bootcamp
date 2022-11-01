// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({
    Key? key,
    this.changeAppBar,
  }) : super(key: key);
  final void Function(bool appBar)? changeAppBar;

  @override
  State<FloatingActionButtonWidget> createState() => _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState extends State<FloatingActionButtonWidget> {
  bool isAppbar = true;

  _changeAppBar() {
    isAppbar = !isAppbar;
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _changeAppBar();
        widget.changeAppBar?.call(isAppbar);
      },
      child: const Icon(Icons.change_circle_outlined),
    );
  }
}


/*  
Floating Action Button'da birde fazla componnet kurmak için kullanabiliriz.
FloatingActionButton.extended(
      onPressed: () {},
      label: Row(children: const [Icon(Icons.change_circle_outlined), Text('Değiştir')]),
    ); */