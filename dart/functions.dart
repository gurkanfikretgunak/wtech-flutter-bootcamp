signInWithEmail() {
  //TODO sign in with email
}

signInWithPhone() {
  //TODO sign in with phone
}
//Shortand version
String signInWithGithub() => "melihcelik09";

//A special type that indicates a value that’s never used.
void getGithubUserName() {
  print(signInWithGithub());
}

//General Usage
//Named optional parameter with required parameter
signInWithEmailAndPasswordNamed({String? email, required String? password}) {}

//Function with parameters
signInWithEmailAndPassword(String email, String password) {}

// Named parameters with parameters
urlShorter(String currentUrl, {bool? withDot, bool? longShort}) {}

//Nullable parameters
playerName(String? name, int? age) {
  if (name != null && age == 18) {
    return print(name);
  } else {
    return print('Guest');
  }
}

//Shorthand with null-aware operators
String playerNameNew(String? name) => name ?? 'Guest';

anonymousFunctions() {
  //Anonymous functions
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
}

void main(List<String> args) {
  getGithubUserName();
  signInWithEmailAndPassword("melihcelik09", "123456789");
  signInWithEmailAndPasswordNamed(email: "melihcelik09", password: "123456789");
  urlShorter("https://www.google.com/dsad64d65as4d",
      withDot: true, longShort: false);
  bool isDone = false;
  String result = isDone ? "Done" : "Not Done";
  print(result);

  playerName("Melih", 22);
  String nullCheck = playerNameNew('Melih');
  print(nullCheck);
  anonymousFunctions();
}
