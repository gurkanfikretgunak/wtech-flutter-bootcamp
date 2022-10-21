signInWithEmail() {
  //TODO sign-in with E-mail services
}

signInWithPhone() {
  //TODO sign-in with phone services
}

String signInWithGithub() => "String function value returning";

void getGithubUser() {

}

void deleteUserFromDB() {

}

signInWithEmailAndPassword({required String? email, String? password}) {

}

signInWithEmailAndPasswordNew({String? email, String? password}) {

}

urlShorter(String currentUrl, {bool? withDot}) {

}

playerName(String? name, int? age) {
  if(name != null && age == 18){
    return print(name);
  }
  else{
    return print("Guest");    
  }
}

String playerNameNew(String? name) => name ?? 'Guest';

void main(List<String> args) {
  bool? isDone;

  signInWithEmailAndPassword(email: "", password: "");
  signInWithEmailAndPasswordNew();
  urlShorter("www.google.com.tr", withDot: true);
}