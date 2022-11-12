import 'package:eventbrite_app/view/register/register_view.dart';
import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.ticket.index,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text('Looking for your mobile tickets?'),
            const Text('Log into same account you used to buy your tickets.'),
            TextButton(
              onPressed: () {},
              child: const Text('Explore events'),
            ),
            const Spacer(),
            CustomElevatedButton(
              text: 'Log in',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterView(),
                  ),
                );
              },
              color: const Color(0xFFC14D25),
              textStyle: const TextStyle(fontWeight: FontWeight.w900),
            ),
            CustomElevatedButton(
              text: 'Find things to do',
              onPressed: () {},
              color: Colors.white,
              border:true,
              textStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
