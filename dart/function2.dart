signInWithEmail() {
//TODO sign-in with E-mail services
}

signInWithPhone() {
  //TODO sign-in with phone services
}

String signInWithGitHub() => "String function valu returning";

void getGitHubUser() {}

void deleteUserfromDB() {}

signInWithEmailAndPassword({required String? email, String? password}) {}

signInWithEmailAndPasswordNew(String email, String password) {}

urlShorter(String currentUrl, {bool? withDot, bool? longShort}) {}

void main(List<String> args) {
  signInWithEmailAndPassword(email: "", password: "");
  signInWithEmailAndPasswordNew("", "");
  urlShorter("www.google.com.tr", withDot: true, longShort: false);
}
