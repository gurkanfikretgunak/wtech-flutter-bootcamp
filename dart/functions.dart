signInWithEmail() {
  // Function ex
}
// Parametreli fonksiyonda değer ataması yapılabilir.
signInWithEmailAndPassword(String email, String pass) {
  print("Email $email ve Şifre $pass");
}
//Parametre önüne required olması bu parametrenin zorunlu olması anlamına gelir.

String playerName(String? name) => name != null ? name : 'Guest';
// null check

void main(List<String> args) {
  signInWithEmailAndPassword("mail", "pass");
  playerName(null);
}
