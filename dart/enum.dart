// TODO enum ve yeni özellikleri denenecek mixine kadar
// ? https://dart.dev/guides/language/language-tour#extension-methods

enum connectionState {
  CONNECTED,
  DISCONNECTED,
  CONNECTING,
  DISCONNECTING,
}

extension connectionStateExtension on connectionState {
  String get name {
    switch (this) {
      case connectionState.CONNECTED:
        return 'CONNECTED';
      case connectionState.DISCONNECTED:
        return 'DISCONNECTED';
      case connectionState.CONNECTING:
        return 'CONNECTING';
      case connectionState.DISCONNECTING:
        return 'DISCONNECTING';
      default:
        return 'DISCONNECTED';
    }
  }
}

void main(List<String> args) {
  print(connectionState.CONNECTED.name);
  print(connectionState.DISCONNECTED.name);
  print(connectionState.CONNECTING.name);
  print(connectionState.DISCONNECTING.name);
}
