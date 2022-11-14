import 'package:eventbrite_app/view/get_started/get_started_view.dart';
import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> headers = ['Ticket Issues', 'Manage Events', 'Settings'];

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: BottomNavigationItem.profile.index,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              itemCount: headers.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(headers[index], style: const TextStyle(fontWeight: FontWeight.bold)),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        thickness: 1,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          const Spacer(),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomElevatedButton(
              text: 'Log In',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const GetStartedView(),
                  ),
                );
              },
              color: const Color(0xFFC14D25),
              textStyle: const TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
