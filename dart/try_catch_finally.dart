//hata olabilecek bir kodu try ile deneyeceğiz ve catch ile de yakalayacağız.

void main(List<String> args) {
  void currentUser(String email, String userID) {
    try {
      checkTheUser() {}
    } on FirebaseException catch (e) {
      // FirebaseException dan hata geldiğinde hatayı yakalıyorum
      print(e);
    } finally {
      // hata olsun olmasın en sonunda çalışacak kod
      navigateToLogin(int errorCode) {}
    }
  }

  // kullanıcının mail ve userId sini kontrol ediyor. Eğer user burada varsa devam ediyor. Yoksa error oluşturuyor, yakalıyor ve erorla beraber ekrana yazdırıyor.

  void myFunction() {
    try {
      checkTheInternet() {}
    } catch (e) {
      print(e);
    }
  }

  //*import 'dart:io';
//kullanıcıdan veri almak için import yapılır

//void main(List<String> args) {
  // try {
//hata olma olasılığı yüksek kodumuzu try bloğu içerisine yazdık.

  //  print("lütfen bir sayı giriniz");
  // int sayi = int.parse(stdin.readLineSync()!);
//kullanıcıdan int tipinde vermesini istediğimiz bir değer girmesini istedik.

//    print(sayi);}

//catch (e) {
//catch bloğu ile hata yakaladık ve print ile yazdırdık.
//
  //  print("hata meydana geldi " + e.toString());
//hatamızı yakaladık
//ÇIKTI: hata meydana geldi FormatException: Invalid radix-10 number (at character 1)

  //}
  //print("devam eden kod");}

  try {
    double sayi = 10 / 2;
    print(sayi);
  } catch (e) {
    print("hata meydana geldi " + e.toString());
  } finally {
    print("her halükarda çalışır, hata çıksada, çıkmasada");
  }
  print("devam eden kod");
}

//bekleme ekranı SplashScreen

//1.web sitesine girdi.(Home page)
//2.sunucu kontrolünü sağladı
//3.Giriş ekranı-login denedi(kullanıcı yanlış girerse yine giriş ekranına yönlendirir)
//giriş ekranına yöndendiren catch yapısı (yöndendirme işlemleri->Re-direct)

//userID - int-field-props(property)
//errorMsg - string
//errorCode - int
//responseStatus - string
//checkInternet - bool
class FirebaseException {}
