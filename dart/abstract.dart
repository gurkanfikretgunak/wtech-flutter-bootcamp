/**NOTE 
 * Soyut sınıfların asıl amacı; birçok sınıfı gruplandırıp ortak metodları base class'larda oluşturmamızdır.Bu sayede 
 * yazılımımızı daha generic daha geliştirilebilir hale getirir.
*/

//Example-1
abstract class Employee {
  void showEmployeeInformation() {
    print("I am a employee ");
  }
}

class Teacher extends Employee {
  @override
  void showEmployeeInformation() {
    print("I'm a teacher");
  }
}

class Manager extends Employee {}

//Example-2

abstract class IUser {
  //Abstract class'ları isimlendirirken genelde başına I konulurmuş.
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Ahmet- $money paranız vardır');
  }
}

class User extends IUser {
  User(String name, int money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

void main() {
/**Example-1 */

  // Teacher teacher = new Teacher();
  // Manager principal = new Manager();
  // teacher.showEmployeeInformation();
  // principal.showEmployeeInformation();

/**Example-2 */
  final userNormal = User('elif', 15);
  userNormal.sayMoneyWithCompanyName(); //Methoda abstract classdan eriştim.

  final bankUser = BankUser('elif', 50, 0000);
  bankUser.sayMoneyWithCompanyName();
  bankUser.bankSpecialLogic();
}
