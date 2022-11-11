import 'package:eventbrite_app/view/register/register_view.dart';
import 'package:flutter/material.dart';

class EventbriteApp extends StatelessWidget {
  const EventbriteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Eventbrite',
      home: RegisterView(),
      // home: HomeView(),
    );
  }
}
