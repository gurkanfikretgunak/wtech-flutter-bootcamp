signInWithEmail() {}

signInWithPhone() {}

String signInWithGithub() => "String return";

void getGitHubUser() {}

void deleteUserfromDB() {}

getEmail() {}

emailSender() {}

emailServices() {
  getEmail();
  emailSender();
}

signInWithEmailAndPassword(String email, String password) {}

signInWithEmailAndPasswordNew({required String? email, String? password}) {}

void main(List<String> args) {
  signInWithEmailAndPassword("bahar@gmail.com", "1234");
  signInWithEmailAndPasswordNew(email: "");

  print(playerName("bahar"));
  print(playerName(null));
  print(playerName2("bahar"));
}

// Slightly longer version uses ?: operator.
String playerName(String? name) => name != null ? name : 'Guest';

// Very long version uses if-else statement.
String playerName2(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}
