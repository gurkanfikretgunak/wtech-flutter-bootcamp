signInWithEmail() {
  //TODO sign-in with E-mail services
}

signInWithPhone() {
  //TODO sign-in with phone services
}
String signInWithGithub() => "String function";

void getGithubUser() {}

//Genel kullanımda named functionlar kod okunurluğunu arttırır.
signInWithEmailAndPassword(bool a, {required String email, String? password}) {}
signInWithEmailAndPasswordNew(String email, String? password) {}

//named ve non-named parametrelerin beraber kullanımı.. -> Kullanımı nadir Senaryoya göre okunurluğu değişebilir.
urlShorted(String currentUrl, {bool? withDot, bool? longShort}) {}

void main(List<String> args) {
  signInWithEmailAndPassword(true, email: "email", password: "password");
  urlShorted("www.google.com", withDot: true, longShort: false);
}
