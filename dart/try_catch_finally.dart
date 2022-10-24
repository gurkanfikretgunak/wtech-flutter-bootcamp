void main(List<String> args) {
  //Methods or Functions "code snaps"
  void myFunciton() {
    try {
      checkTheInternet() {}
    } catch (e) {
      print(e);
    }
  }

  void currentUser(String email, String userID) {
    try {
      checkTheUser() {}
    } on FirebaseException catch (e) {
      print(e);
    } finally {
      navigateToLogin(int errorCode) {}
    }
  }
}

/*

Firebase Exception

userID - int - field - props
errorMsg - string
errorCode - int
responseStatus - string
checkInternet - bool
 */

class FirebaseException {}
