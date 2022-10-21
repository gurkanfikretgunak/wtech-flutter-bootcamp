


  signInWithEmail(){
   //TODO sign-in services E-mail sevices
  }

    signInWithPhone(){
   //TODO sign-in services Phone sevices
  }

String signInWithGithub()=>"String return";

void getGitHubUser(){
    
}

void deleteUserfromDB(){
  //return yapılan işlem
}
 //Kurgu örneği
  getEmail(){

  }

  emailSender(){

  }

  emailServices(){
    getEmail();
    emailSender();
  }

//parametre
  signInWithEmailAndPassword(String email,String password){

    

  }

   signInWithEmailAndPasswordNew({required String? email,String? password}){


  }

  void main(List<String> args) {
  signInWithEmailAndPassword("ahmt@gmail.com", "1234");
  signInWithEmailAndPasswordNew(email: "");

  print(playerName("ahmet"));
   print(playerName(null));
    print(playerName2("ahmet"));
}


// Slightly longer version uses ?: operator.
String playerName(String? name) => name != null ? name : 'Guest';

// Very long version uses if-else statement.
String playerName2(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}