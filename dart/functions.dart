
signInWithEmail(){
  //TODO sign-in services

}


signInWithPhone(){
  //TODO sign-in with phone services
  
}


getEmail() {

}
emailSender(){

}

emailService(){
  getEmail();
  emailSender();
  
  //hepsini burda çağırırsın
}

String signInWithGithub() => "string dönmek zorundasın moruk";  //böyle de kullanılabilir


void deleteUserFromDB(){}



signInWithEmailAndPassword({String email="defaultVal",String password="defaultPass"}){  //default değer tanımladık eğer data gelmezse default değerleri kullanacak
  
    email ="a";
    password = "b";
    
  
  }



void main(List<String> args) {
  
  signInWithEmailAndPassword(email: "aaaa",password: "bbbbbbb");
}