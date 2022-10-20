void main(List<String> args) {
  var name = 'Mete'; //String
  var age = 22; //Int
  var weight = 79.5; //Double
  var hobby = ['Fitness', 'Walking']; // List(Array)
  var address = {'Address_1': 'Amasya', 'Address_2': 'Mortal Earth'}; // Map

  print(
      'My name is $name and I am $age years old. My weight is $weight and my hobbies are ${hobby[0]} and ${hobby[1]}. I am from ${address['Address_1']}.');
}
