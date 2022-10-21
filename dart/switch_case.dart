void main(List<String> args) {
  signSelect(String command) {
    switch (command) {
      case 'facebook':
        facebookSign();
        break;
      case 'google':
        googleSign();
        break;
      case 'github':
        githubSign();
        break;
      case 'microsoft':
        microsoftSign();
        break;
      default:
        emailSign();
    }
  }

  signSelect('google');
}

facebookSign() {
  print("Signed with Facebook!");
}

googleSign() {
  print("Signed with Google!");
}

githubSign() {
  print("Signed with Github!");
}

microsoftSign() {
  print("Signed with Microsoft!");
}

emailSign() {
  print("Signed with Email!");
}
