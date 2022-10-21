signInWithEmail() {
  //TODO sign in with email
}

signInWithPhone() {
  //TODO sign in with phone
}

String signInWithGithub() => "melihcelik09";
void getGithubUserName() {
  print(signInWithGithub());
}

//Genel Kullanım
signInWithEmailAndPasswordNamed({String? email, required String? password}) {}

signInWithEmailAndPassword(String email, String password) {}
urlShorter(String currentUrl, {bool? withDot, bool? longShort}) {}

playerName(String? name, int? age) {
  if (name != null && age == 18) {
    return print(name);
  } else {
    return print('Guest');
  }
}

String playerNameNew(String? name) => name ?? 'Guest';

void main(List<String> args) {
  getGithubUserName();
  signInWithEmailAndPassword("melihcelik09", "123456789");
  signInWithEmailAndPasswordNamed(email: "melihcelik09", password: "123456789");
  urlShorter("https://www.google.com/dsad64d65as4d", withDot: true, longShort: false);
  bool isDone = false;
  String result = isDone ? "Done" : "Not Done";
  print(result);

  playerName("Melih", 22);
  String nullCheck = playerNameNew('Melih');
  print(nullCheck);
}
