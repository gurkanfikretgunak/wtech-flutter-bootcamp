import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();
  static const String appTitle = 'Eventbrite';
  //Welcome Page
  static const String welcomeTitle = 'Hello';
  static const String welcomeSubtitle =
      'Let\'s find your next unforgettable event.\nChoose a location below to get started.';
  static const String welcomeImagePath = 'assets/get_started.png';
  static const String welcomeElevatedButtonText = 'Pick a city';
  static const IconData welcomeIcon = Icons.my_location;
  static const String welcomeTextButton = 'Use my current location';
  //Home Page
  static const String homeTitle = 'Find events in';
  static const IconData selectEventDropDownButtonIcon = Icons.expand_more;
  static const String showcaseTitle = 'Online Events';
  static const String selectEventDropDownButtonValue = 'Online Events';
  static const String selectEventDropDownButtonValue2 = 'Nearby Events';
  //Get Started Page
  static const String getStartedTitle = 'Let\'s get started';
  static const String getStartedSubtitle = 'Sign up or log in to see what\'s happening near you';
  static const String getStartedElevatedButtonText = 'Continue with email address';
  static const String getStartedFacebookButtonText = 'Continue with Facebook';
  static const String facebookIconPath = 'assets/facebook_logo.png';
  static const String getStartedGoogleButtonText = 'Continue with Google';
  static const String googleIconPath = 'assets/google_logo.png';
  static const String getStartedTextButton = 'I bought tickets,but I dont\'t have an account';
  //Favorite Page
  static const String favoriteTitle = 'See your favorites in one place';
  static const String favoriteSubtitle = 'Log in to see your favorites';
  static const IconData favoriteIcon = Icons.favorite_border_outlined;
  static const String favoriteTextButton = 'Explore events';
  static const String favoriteBottomButtonText = 'Log in';
  static const String favoriteSliverAppBarTitle = 'Favorites';
  static const int favoriteTabBarLength = 2;
  static const String favoriteEventsTab = 'Events';
  static const String favoriteOrganizersTab = 'Organizers';
  static const String userFavoriteEventsTitle = 'No liked events yet';
  static const String userFavoriteEventsSubtitle =
      'Like an event to find it later, receive notifications before it sells out, and help us improve recommendations for you.';
  static const String userFavoriteEventsTitle2 = 'Find events';
  static const List<Map<String, String>> userEventCategories = [
    {
      'name': 'Music',
    },
    {
      'name': 'Food & Drink',
    },
    {
      'name': 'Active',
    },
    {
      'name': 'Learn',
    },
    {
      'name': 'Festival',
    },
    {
      'name': 'Party',
    },
  ];
  static const String userFavoriteOrganizersTitle = 'Follow event organizers';
  static const String userFavoriteOrganizersSubtitle =
      'Be the first to know about great events from the top organizers in your area';
  static const String userFavoriteOrganizersTitle2 = 'Who to follow';
  static const String userFavoriteOrganizersSubtitle2 =
      'Follow the most popular local organizers and get notified when they create events';
  //Login Page
  static const String loginAppBarTitle = 'Log in or Sign up';
  static const String emailLabelText = 'Email';
  static const String emailHintText = 'Enter email address';
  static const String loginBottomText = 'Sign in with the same email address you used to get your tickets.';
  static const String loginButtonText = 'Next';
  //Password Page
  static const String passwordAppBarTitle = 'Log In';
  static const IconData passwordProfileIcon = Icons.person;
  static const String changeEmailText = 'Change';
  static const String passwordLabelText = 'Password';
  static const String passwordHintText = 'Enter password';
  static const String bottomLoginButtonText = 'Log In';
  static const String bottomLoginLinkText = 'Email me a login link';
  static const String forgotPasswordText = 'I forgot my password';
  //Register Page
  static const String registerAppBarTitle = 'Sign Up';
  static const String registerButtonText = 'Sign Up';
  static const String confirmEmailLabelText = 'Confirm Email';
  static const String confirmEmailHintText = 'Confirm Email';
  static const String firstNameLabelText = 'First Name';
  static const String firstNameHintText = 'Enter first name';
  static const String surnameLabelText = 'Surname';
  static const String surnameHintText = 'Enter surname';
  //Search Page
  static const String searchBarHintText = 'Start Searching';
  static const int searchTabBarLength = 2;
  static const String searchEventsTab = 'Events';
  static const String searchOrganizersTab = 'Organizers';
  //Tickets Page
  static const String ticketTitle = 'Looking for your mobile tickets?';
  static const String ticketSubtitle = 'Log into same account you used to buy your tickets.';
  static const IconData ticketIcon = Icons.confirmation_number_outlined;
  static const String ticketBottomButtonText = 'Log in';
  static const String ticketBottomOutlinedButtonText = 'Find things to do';
  static const String ticketSliverAppBarTitle = 'Tickets';
  static const int ticketTabBarLength = 2;
  static const String ticketUpcomingTab = 'Upcoming';
  static const String ticketPastTab = 'Past tickets';
  static const String ticketPlaceHolderTitle = 'Not seeing your tickets? Learn\n more about how to find them.';
  static const String ticketPlaceHolderButtonText = 'Find my tickets';
  //Profile
  static const List<Map<String, dynamic>> profileMenuHeaders = [
    {'name': 'Notification Center', 'icon': Icons.notifications_outlined},
    {'name': 'Linked Accounts'},
    {'name': 'Following'},
    {'name': 'Ticket Issues'},
    {'name': 'Manage Events'},
    {'name': 'Credits'},
    {'name': 'Settings'},
  ];
  static const List<Map<String, dynamic>> profileStats = [
    {'name': 'Likes', 'number': 0},
    {'name': 'My Tickets', 'number': 0},
    {'name': 'Following', 'number': 0},
  ];
  static final List<String> guestProfileMenuHeaders = ['Ticket Issues', 'Manage Events', 'Settings'];
  static const guestProfileLoginButtonText = 'Log in';
  static const profileLogoutButtonText = 'Log out';
  //Condition Widget
  static const String conditionTitle = 'Terms and coditions';
  static const String conditionText = 'By signing up or logging in, I accept the ';
  static const String conditionText2 = 'and have read the ';
  static const String conditionLinkText = 'Eventbrite Terms of Service ';
  static const String conditionLinkText2 = 'Privacy Policy.';
  static const String conditionAcceptButtonText = 'Accept';
  static const String conditionCancelButtonText = 'Cancel';
  //Organizer Follow Card Widget
  static const String organizerFollowCardTitle = 'Organizer Name';
  static const String organizerFollowButtonText = 'Follow';
  //Event Card Widget
  static const IconData eventCardFavoriteIcon = Icons.favorite_border;
  static const IconData eventCardShareIcon = Icons.share;
  static const IconData eventCardMoreIcon = Icons.more_vert;
  static const IconData eventCardCalendarIcon = Icons.calendar_today;
  static const IconData eventCardScheduleIcon = Icons.schedule;
  static const IconData eventCardDisplayIcon = Icons.smart_display_outlined;

  //Event Details Page
  static const String eventFabText = 'Tickets';
  static const String eventFreeText = 'Free';
  static const String eventPlatform = 'on EventBrite';
  static const String eventStatus = 'Online Event';
  static const String eventDuration = 'Duration: 2h 30m';
  static const String eventSuggestionTitle = 'More like this';
  static const List eventTags = [
    'Music',
    'Food & Drink',
    'Active',
    'Learn',
    'Festival',
    'Party',
  ];
  static const String eventAboutTitle = 'About';
  static const String eventSeeMoreBtnText = 'See more';
  static const String eventLocationTitle = "Location";
  static const String eventLocationImgPath = "assets/location_holder.png";
  static const String eventOrganizerTitle = "Organizer";
  static const String eventTagsTitle = "Tags";
}
