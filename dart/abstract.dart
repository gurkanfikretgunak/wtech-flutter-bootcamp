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

void main() {
  Teacher teacher = new Teacher();
  Manager principal = new Manager();
  teacher.showEmployeeInformation();
  principal.showEmployeeInformation();
}
