import 'package:app/widgets/bottomAppBar.dart';
import 'package:app/widgets/top_bar_with_avatar.dart';
import 'package:app/widgets/travelCards.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Material(
        child: Container(
          color: Colors.black26,
          child: Column(
            children: [
              TopBarWithAvatar(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Yolculuklar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Tümünü Gör >",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              TravelCards(),
              TravelCards(),
              TravelCards(),
              BotomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
