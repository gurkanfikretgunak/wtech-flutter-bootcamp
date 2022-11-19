import 'package:flutter/material.dart';
import 'package:neo_financial_app/widgets/custom_bottom_navigation_bar_widget.dart';
import '../../core/data/models/user.dart';
import '../../core/data/services/service.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Center(
            child: FutureBuilder<List<User>>(
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.last.email);
                } else {
                  return const Text('No connection');
                }
              },
              future: UserRetrofit().getUsers(),
            ),
          ),
          bottomNavigationBar: const CustomBottomNavBar(),
        ));
  }
}
