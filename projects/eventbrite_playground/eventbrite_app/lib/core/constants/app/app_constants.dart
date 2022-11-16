import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();
  static const String welcomeTitle = 'Hello';
  static const String welcomeSubtitle =
      'Let\'s find your next unforgettable event.\nChoose a location below to get started.';
  static const String welcomeImagePath = 'assets/get_started.png';
  static const String welcomeElevatedButtonText = 'Pick a city';
  static const IconData welcomeIcon = Icons.my_location;
  static const String welcomeTextButton = 'Use my current location';
  static const String favoriteTitle = 'See your favorites in one place';
  static const String favoriteSubtitle = 'Log in to see your favorites';
  static const IconData favoriteIcon = Icons.favorite_border_outlined;
  static const String favoriteTextButton = 'Explore events';
  static const String favoriteBottomButtonText = 'Log in';
  static const String ticketTitle = 'Looking for your mobile tickets?';
  static const String ticketSubtitle = 'Log into same account you used to buy your tickets.';
  static const IconData ticketIcon = Icons.confirmation_number_outlined;
  static const String ticketBottomButtonText = 'Log in';
  static const String ticketBottomOutlinedButtonText = 'Find things to do';
  static const String getStartedTitle = 'Let\'s get started';
  static const String getStartedSubtitle = 'Sign up or log in to see what\'s happening near you';
  static const String getStartedElevatedButtonText = 'Continue with email address';
  static const String getStartedFacebookButtonText = 'Continue with Facebook';
  static const String facebookIconPath = 'assets/facebook_logo.png';
  static const String getStartedGoogleButtonText = 'Continue with Google';
  static const String googleIconPath = 'assets/google_logo.png';
  static const String getStartedTextButton = 'I bought tickets,but I dont\'t have an account';
}
