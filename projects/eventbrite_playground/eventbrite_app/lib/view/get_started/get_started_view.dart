import 'package:eventbrite_app/view/register/register_view.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Let\'s get started',
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('Sign up or log in to see what\'s happening near you', style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    CustomElevatedButton(
                      text: 'Continue with email address',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const RegisterView()),
                        );
                      },
                      color: const Color(0xFFC14D25),
                      textStyle: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: CustomElevatedButton(
                        text: 'Continue with Facebook',
                        onPressed: () {},
                        color: Colors.white,
                        border: true,
                        hasImage: true,
                        imagePath: 'assets/facebook_logo.png',
                        textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                    CustomElevatedButton(
                      text: 'Continue with Google',
                      onPressed: () {},
                      color: Colors.white,
                      hasImage: true,
                      imagePath: 'assets/google_logo.png',
                      border: true,
                      textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('I bought tickets,but I dont\'t have an account'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
