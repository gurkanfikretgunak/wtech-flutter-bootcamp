
void main(List<String> args) {
  


  String email = "" ;
  String password = "";
  CheckLogIn(email, password);
}


void CheckLogIn(String mail,String pass){
  String _CorrectEmail = "12345ulas";
  String _CorrectPassword = "6789ulas";

  if(_CorrectEmail == mail && _CorrectPassword == pass){
    print("access granded");
  }
  else if(_CorrectEmail ==mail && _CorrectPassword != pass){
    print("wrong password! try again");
  }
  else if(_CorrectEmail != mail && _CorrectPassword ==pass){
    print("wrong mail! try again");
  }
  else{
    print("both email and passsword are wrong!");

  }

}