tryCatch(int bolunen, int bolen) {
  try {
    int sayi = bolunen ~/ bolen;
    print(sayi);
  } catch (e) {
    print("Hata" + e.toString());
  } finally {
    print("Her zaman burası çalışsın.");
  }
  print("Try catch'den çıkıldı");
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

void main(List<String> args) {
  tryCatch(10, 12);
}

//userID-int
//errorMsg-String
//errorCode-int
//responseStatus-String
//checkInternet-bool
class FirebaseException {}

class MongoException {
  int? errorCode;
}
