import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
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