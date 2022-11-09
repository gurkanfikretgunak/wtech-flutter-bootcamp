import 'package:app/views/product_detail_view.dart';
import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key, required this.name, required this.price, required this.image}) : super(key: key);
  final String name;

  final String price;
  final String image;
  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: DetailAppBarComponent(topicText: "Cart"),
          ),
          Card()
        ],
      ),
    ));
  }
}
