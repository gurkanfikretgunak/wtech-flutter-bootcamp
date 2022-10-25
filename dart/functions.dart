signInWithEmail() {
  //TODO sign-in with E-mail services
}
signInWithPhone() {
  //TODO sign-in with phone services
}


String signInWithGithub () => "String function value returning";

void getGithubUser(){}

void deleteUserfromDB(){}

  signInWithEmailAndPassword({required String? email,String? password}){}

  urlShorter(String currentUrl,{
    bool? withDot,
    bool? longShort,
  }) {}

playerName(String? name, int? age) {
    if (name != null && age==18) 
     return print(name);
     else {
      return print('Guest');
    }
    }

void main(List<String> args) {

  signInWithEmailAndPassword(email: "",password: "");
  urlShorter("www.google.com.tr",withDot: true,longShort: false);

playerName("Aslınaz",10);}