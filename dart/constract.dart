class Person {
  String name;
  String gender;
  int age;

  Person(this.name, this.gender, this.age);

  calismak() => print('$name calisiyor');
  yorulmak() => print('$name yoruluyor');
}

int? main() {
  var firstPerson = Person("Busra", "Alpay", 21);
  print(firstPerson.name);
  print(firstPerson.gender);
  print(firstPerson.age);
}
