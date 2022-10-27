signInWithEmail() {
  //TODO sign-in with E-mail services
}
signInWithPhone() {
  //TODO sign-in with phone services
}

String signInWithGithub() => "String function value returning";

void getGithubUser() {}

void deleteUserfromDb() {}

signInWithEmailAndPassword({String? email, String? password}) {
  //Named Parametre
}

signInWithEmailAndPasswordNew(String email, String password) {}

urlShorter(String currentUrl, {bool? withDot}) {}

playerName(String? name) {
  if (name != null) {
    return print(name);
  } else {
    return print("Guest");
  }
}

String playerName2(String? name) => name != null ? name : 'Guest';

void main(List<String> args) {
  signInWithEmailAndPassword(email: "", password: "");
  signInWithEmailAndPasswordNew("", "");
  signInWithEmailAndPassword();

  urlShorter("gooogle.com.tr", withDot: true);
  playerName("");
  playerName("helllo");
}
