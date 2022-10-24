// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  String name = 'Batuhan';

  if (name is String) print('Name is string value');

  if (name is! bool) print('Name is not boolean ');

  Dog dog = Dog(name: 'Dog', age: 2);

  (dog as Animal).age = 12;
  print(dog.age);
}

class Animal {
  String name;
  int age;
  Animal({
    required this.name,
    required this.age,
  });
}

class Dog extends Animal {
  Dog({required super.name, required super.age});
}
