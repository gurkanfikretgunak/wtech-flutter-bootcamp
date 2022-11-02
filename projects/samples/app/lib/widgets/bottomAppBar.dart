import 'package:flutter/material.dart';

class BotomAppBar extends StatelessWidget {
  const BotomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Row(
        children: [
          IconButton(
              icon: const Icon(Icons.car_rental_rounded),
              onPressed: () {
                print("Araç Kiralama");
              }),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.airplane_ticket_rounded),
            onPressed: () {
              print("Uçak Bileti");
            },
          ),
          IconButton(
            icon: const Icon(Icons.bus_alert_rounded),
            onPressed: () {
              print("Otobüs Bileti");
            },
          ),
        ],
      ),
    );
  }
}
