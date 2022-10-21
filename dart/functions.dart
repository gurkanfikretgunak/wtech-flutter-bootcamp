func() {
  print("object");
  print("object");
  print("object");
  print("object");
}

signInWithEmail() {
  //TODO sign-in with E-mail services
}

signInWithPhone() {
  //TODO sign-in with Phone services
}

String signInWithGithub() => "String function value returning";

void getGithubUser() {}
void deleteUserFromDB() {}

/*signInwithEmailAndPassword({required String email, String password}) { //Fonksiyonlarda named parametreler kullanilmalidir. Suslu paranteze alınarak yapılır. Required ile parametre zorunlu kılınabilir.
  //Firebase userCrendential = Firebase();
  //userCrendential.SignInWithEmail(email, password);
}*/

/*signInwithEmailAndPasswordNew({String email, String password}) {

}*/

urlShorter(
  String currentUrl, {
  bool? withDot,
}) {}

void main(List<String> args) {
  // signInwithEmailAndPassword(email, password); //Bu fonksiyonun işlem yapması için zorunlu kıldığın dataları girmen gerekir.
  urlShorter("www.google.com.tr", withDot: true);
}

getEmail() {}

emailSender() {}

emailServices() {
  getEmail();
  emailSender();
}
