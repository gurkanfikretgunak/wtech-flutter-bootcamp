import 'package:flutter/material.dart';

//TODO: Promo side will add to MockApi and Onboard class will be update
class PromocodeColumnWidget extends StatefulWidget {
  const PromocodeColumnWidget({super.key});

  @override
  State<PromocodeColumnWidget> createState() => _PromocodeColumnWidgetState();
}

class _PromocodeColumnWidgetState extends State<PromocodeColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Have a promo code?',
            style: Theme.of(context).textTheme.headlineLarge),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Code",
              fillColor: Colors.black12,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
