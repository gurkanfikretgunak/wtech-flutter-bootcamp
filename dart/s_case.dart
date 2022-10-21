void main(List<String> args) {
  () {};

  signSelect("gh");
}

signSelect(String command) {
  switch (command) {
    case 'facebook':
      facebookSign();
      break;
    case 'linkedin':
      linkedinSign();
      break;
    case 'gh':
      githunSign();
      break;
    case 'ms':
      microsoftSign();
      break;
    case 'bb':
      bitbucketSign();
      break;
    default:
      emailSign();
  }
}

void emailSign() {
  print("email signed");
}

void bitbucketSign() {
  print("bitbucket signed");
}

void microsoftSign() {
  print("ms signed");
}

void githunSign() {
  print("gh signed");
}

void linkedinSign() {
  print("linkedin signed");
}

void facebookSign() {
  print("fb signed");
}
