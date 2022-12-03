import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:flutter/material.dart';

class EventNotifier extends ChangeNotifier {
  Event? model;
  saveModel(event) {
    model = event;
    notifyListeners();
  }
}
