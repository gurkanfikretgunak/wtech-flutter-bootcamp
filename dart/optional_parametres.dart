String mysteryMessage(String kim, [String? ne, String? nerede]) {
  var message = '$kim';
  if (ne != null && nerede == null) {
    message = '$message $ne dedi';
  } else if (nerede != null) {
    message = '$message $ne dedi $nerede';
  }
  return message;
}

void main() {
  var sonuc = mysteryMessage('Busra', 'selamm', 'yurtta');
  print(sonuc);
}
