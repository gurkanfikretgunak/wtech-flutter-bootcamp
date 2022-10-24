void main(List<String> args) {
  void myFonction() {
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
      navigateToHome(int errorCode) {}
    }
  }
}

class FirebaseException {}
