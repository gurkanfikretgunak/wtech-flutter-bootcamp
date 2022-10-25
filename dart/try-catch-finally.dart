void main(List<String> args) {
  // try - catch   özel durum oluşturulacak bi kodun  sonlandırılmasına izin vermedden  özel durumu işlemek için kullanılır.
  try {} catch (e) {
    // Herhabgi bir istisna türünü yakalamak için kullanılır.
  }

  try {} on SomeException {
    // Belirli bir özel durumu  işlemek için on kullanılır .

  }

  var name = '';
  try {
    displayName(name);
  } catch (e) {
    print("There is exception ");
  }

  // Belirli özel durumu işleyen Try - Catch
  try {
    displayName(name);
  } on EmptyNameException {
    print('Given name is empty.');
  } finally {
    // özel durumdan bağımsız olarak gerçekleşen kod parçacığı

  }
}

///- ismin boş olmama durum fonksiyonu
void displayName(String str) {
  if (str.length > 0) {
    print(str);
  } else {
    throw new Exception("Name is emptiy");
  }
}

// Belirli özel durumu işleyen   Try - Catch Class

class EmptyNameException implements Exception {
  String cause;

  EmptyNameException(this.cause);
}

class SomeException {}
