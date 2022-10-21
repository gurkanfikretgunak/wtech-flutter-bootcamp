void main(List<String> args) {
  String command = 'facebook';
  signSelect(command);
}

void emailSign() {
  print("email Signed");
}

void bitbucketSign() {
  print("Bitbucket Signed");
}

void microsoftSign() {
  print("Microsoft Signed");
}

void githubSign() {
  print("Github Signed");
}

void linkedinSign() {
  print("Linkedin Signed");
}

void facebookSign() {
  print("Facebook Signed");
}

signSelect(String command) {
  switch (command) {
    case 'facebook':
      facebookSign();
      break;
    case 'linkedin':
      linkedinSign();
      break;
    case 'github':
      githubSign();
      break;
    case 'microsoft':
      microsoftSign();
      break;
    case 'bitbucket':
      bitbucketSign();
      break;
    default:
      emailSign();
  }
}
