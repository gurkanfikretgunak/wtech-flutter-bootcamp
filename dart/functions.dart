signInWithEmail() {
  //TODO sign-in with E-mail services
}

signInWithPhone() {
  //TODO sign-in with phone services
}

//single line code arrow
String signInWithGithub() => "String function value returning";

void getGithubUser() {}

void deleteUserfromDB() {}

signInWithEmailandPassword({required String? email, String? password}) {}
signInWithEmailandPasswordNew(String email, String password) {}

urlShorter(String currentUrl, {bool? withDot}) {}

void playerName(String? name) {
  if (name == null) {
    return print("Guest");
  } else {
    return print(name);
  }
}

String playerNameNew(String? name) => name != null ? name : 'Guest';
void main(List<String> args) {
  signInWithEmailandPassword(email: "", password: "");
  signInWithEmailandPasswordNew("", "");
  urlShorter("www.google.com", withDot: true);
  playerName(null);
  playerNameNew("Gokalp");
}
