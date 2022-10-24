
void main(List<String> args) {
  
  //method or functions * code snaps
  void myFun(){
    try {
      checkTheInternet(){}
    } on FireBaseException catch (e) {
      print(e);
    }
  }

}

// userId int
// errorMsg   string
//errorcode int
// responsestatus string
// checkinternet bool
class FireBaseException{

}