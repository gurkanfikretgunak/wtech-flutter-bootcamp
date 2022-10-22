signInWithEmail() {
//TODO sign-in with E-mail services
}

signInWithPhone() {
  //TODO sign-in with phone services
}

String signInWithGitHub() => "String function value returning";//single line code

void getGitHubUser() {}

void deleteUserfromDB() {}

signInWithEmailAndPassword({required String? email, String? password}) {}//named parametrede genel kullanım bu şekilde

signInWithEmailAndPasswordNew(String email, String password) {}

urlShorter(String currentUrl, {bool? withDot, bool? longShort}) {}//named ve unnamed bu şekilde kullanılabilir ama string değer olması lazım


 playersName(String? name){
  if(name != null) {
    return name;
  } else {
    return 'Guest';
  }
}



 playerName  (String? name, int? age){
  if(name != null && age == 18){

    return print(name);

  } else {
    return print("Misafir");
  
}
 }

// ignore: dead_code
String playerNameNew(String? name) => name ?? 'Guest';


void main(List<String> args) {

  bool? isDone;

  signInWithEmailAndPassword(email: "", password: "");
  signInWithEmailAndPasswordNew("", "");
  urlShorter("www.google.com.tr", withDot: true, longShort: false);


  playerName("emine", 29);



};
 