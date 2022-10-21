void main(List<String> args) {
  var command = '';
switch (command) {
  case 'fb':
    facebookSign();
    break;
  case 'twitter':
    twitterSign();
    break;
  case 'apple':
    appleSign();
    break;
  default:
    noSign();
}
}



facebookSign() =>print("Facebook logged in");
twitterSign() =>print("Twitter logged in");
appleSign() =>print("Apple logged in");
void noSign() {
  print("login failed");
}