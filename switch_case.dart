main() {
  var screenPath = '/LoginScreen';
  switch (screenPath) {
    case '/LoginScreen':
      print('Login Screen');
      break;
    case '/RegisterScreen':
      print('Register Screen');
      break;
    default:
      print('failed to redirect');
  }

//Continue ifadesi iki case'i birden fazla case'i işletmeye yarar.
  switch (screenPath) {
    case '/LoginScreen':
      print("executeClosed();");
      continue nowScreen;

    nowScreen:
    case '/NowScreen':
      print("executeNowScreen();;");
      break;

    case '/RegisterScreen':
      print('Register Screen');
      break;
  }
}
