void main(List<String> args) {
  var command = 'twitter';
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

facebookSign() => print("Facebook logged in");
twitterSign() => print("Twitter logged in");
appleSign() => print("Apple logged in");
void noSign() {
  print("login failed");

  var notlar = '100';
switch (notlar) {
  case '100':
    print('çok iyi');
      break;
    case '50':
    print('eh');
    break;
  case '0':
    print('kötü');


}
}