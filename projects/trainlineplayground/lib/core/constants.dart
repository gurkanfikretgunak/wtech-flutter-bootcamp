
import 'package:flutter/material.dart';

class ListViewBuilderItems {
  String title;
  ListViewBuilderItems({required this.title});
}

class ListViewBuilderControllers extends TextEditingController{
  late TextEditingController myItemController;
  
  ListViewBuilderControllers({required this.myItemController});
}