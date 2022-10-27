/**EXTENDS'DEN FARKI !!
 * 
 * Bir class'dan extends ederseniz sınıfınız farklı özelliklere sahip olabilir. 
 * 
 * Ancak implements edersek oluşturacağınız class'lar IStudent'in birer kopyasıdır. Ancak üzerine farklı şeyler eklenebilir.
 * Yani implents class'ımız bize bir şablon sunuyor gibi düşünülebilir. 
 * 
 * Implements Amacı-> Bundan türeyen sınıfları sistemli bir şekilde tutmak. 
 */
void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final String age;

  IStudent(this.name, this.age);

  void saySomething() {
    print(age);
  }
}

class Student implements IStudent {
  @override
  // TODO: implement age
  String get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  void saySomething() {
    print('student');
  }
}

class Student2 {
  final String name;
  final String age;

  Student2(this.name, this.age);
}
