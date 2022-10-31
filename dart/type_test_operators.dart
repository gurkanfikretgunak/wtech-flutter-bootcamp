/**
 * as -> Typecast için kullanılır
 * is -> Nesne belirtilen türe sahipse doğru 
 * is! ->  Nesne belirtilen türe sahip değilse doğru 
 * 
 */
void main(List<String> args) {
  final user = _User('elif', age: 22);

  if (user.age is! int) {
    if (user.age! < 18) {
      print("evet küçük");
      user.updateMoneyWithString('TR');
    }
  }

  final _newType = user.moneyType is String ? (user.moneyType as String) : '';
  print((user.moneyType as String) + 'A'); //Tip dönüşümü
}

class _User {
  final String name;
  int? age;
  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int data) {
    moneyType = data;
  }
}
