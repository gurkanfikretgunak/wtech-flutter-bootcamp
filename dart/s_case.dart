import 'dart:io';

void main(List<String> args) {
  print(
      "Lütfen giriş yapmak istediğiniz platformu seçiniz. \n1-Facebook \n2-Twitter\n3-Medium");
  var command = stdin.readLineSync();
  switch (command) {
    case '1':
      facebookSign();
      break;
    case '2':
      twitterSign();
      break;
    case '3':
      mediumSign();
      break;
    default:
      noSign();
  }
}

facebookSign() => print("Facebook logged in");
twitterSign() => print("Twitter logged in");
mediumSign() => print("Apple logged in");
void noSign() {
  print("login failed please try again");
}
