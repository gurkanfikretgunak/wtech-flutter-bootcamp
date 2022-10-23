void main(List<String> args) {
  signSelect("github");
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

void bitbucketSign() {
  print("bitbucket signed");
}

void emailSign() {
  print("email signed");
}

void facebookSign() {
  print("facebook signed");
}

void linkedinSign() {
  print("email signed");
}

void githubSign() {
  print("github signed");
}

void microsoftSign() {
  print("microsoft signed");
}
