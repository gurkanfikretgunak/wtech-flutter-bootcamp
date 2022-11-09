import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddProduct extends ChangeNotifier {
  final List<String> addNames = [];
  final List<String> addImages = [];
  final List<String> addPrices = [];

  void addProductCart(String name, String price, String image) {
    addNames.add(name);
    addPrices.add(price);
    addImages.add(image);
    notifyListeners();
  }
}

final addProvider = ChangeNotifierProvider((ref) {
  return AddProduct();
});
