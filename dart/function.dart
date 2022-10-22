void main(List<String> args) {
  print(toplananSayi(4, 5));
  print(sendMail());
  print(bolmeIslemi(30, 4));
  print(emailVerify("asrak116@gmail.com", "password"));
  print(toplamOptional(
    a: 23234,
    b: 23243546565,
  ));
  signInWithEmailAndPassword(email: "fflfffl", password: "233");
  urlShorter("asrak116@gmail.com", longShort: true);
}

// function tanımlama
sendMail() {
  print("merhaba");
}

//Arrow  tanımlama
withSendPassword() => "";
double bolmeIslemi(int sayi1, int sayi2) => sayi1 / sayi2;

// iki sayının toplamı
//Bu değerleri vermek zorundayız vermezisek program hata verir.
int toplananSayi(int sayi1, int sayi2) {
  int sonuc = sayi1 + sayi2;
  return sonuc;
}

//opsiyonelli  tek parametre köşeli parantez içerisine yazılan herşey zorunlu değildir.
emailVerify(String email, [String password = "123Ee"]) {
  return email + password;
}

//Optional Named Parameter  birden fazla ise {} içerisine yazılır.
int toplamOptional({int a = 4, int b = 6, int c = 9}) {
  int sonuc = a + b + c;
  return sonuc;
}

signInWithEmailAndPassword({required String? email, String? password}) {
// named parametreler bu şekilde kullanılır .
}

urlShorter(String currentUrl, {bool? withDot, bool? longShort}) {}
