import 'package:dio/dio.dart';
import 'package:eventbrite_app/core/service/network_service.dart';
import 'package:flutter/material.dart';

import '../../core/model/user.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    return Material(
      child: FutureBuilder(
        future: NetworkService(dio).getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<User>? users = snapshot.data;
            return ListView.builder(
              itemCount: users!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(users[index].name ?? ''),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
