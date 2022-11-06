class Person {
  late String name;
  late String gender;
  int age = 0;

  walking() => print('$name is walking');
  talking() => print('$name is talking');
}

int? main() {
  var firstPerson = Person();

  firstPerson.name = "Busra";
  firstPerson.gender = "female";
  firstPerson.age = 25;

  // Creating an object of the Person class
  var secondPerson = Person();
  secondPerson.name = "Leyla";

  // Creating an object of the Person class
  var thirdPerson = Person();
  thirdPerson.name = "Seyma";

  // Creating an object of the Person class
  var fourthPerson = Person();
  fourthPerson.name = "Tahir";

  // Driver Code
  print(firstPerson.name);
  print(firstPerson.age);
  print(secondPerson.name);
  print(thirdPerson.name);
  print(fourthPerson.name);
}
