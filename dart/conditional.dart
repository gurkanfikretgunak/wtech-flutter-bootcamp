void main(List<String> args) {
  // Conditional expression koşullu ifadeler
  String playerName1(String? name) =>
      name ?? 'Guest'; // Name ifedesini kontrol ederse ?? kullanılır.
  String playerName(String? name) => name != null ? name : 'Guest';

  if (7 % 2 == 0) {
    print('7 is even');
  } else {
    print('7 is odd');
  }

  if (8 % 4 == 0) {
    print('8 is divisble by 4');
  }

  // ternary operators
  var isAlive = true;
  var monday = isAlive ? 'doctor' : null;
  print('monday appointment: $monday');
}

String playerName(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}
