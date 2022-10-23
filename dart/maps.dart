void main(List<String> args) {
  //adding values to Map Literals at Runtime
  var details = {'Usrname': 'tom', 'password': 'pass@123'};
  details['Uid'] = 'U1oo1';
  print(details);
  
  var fruit = {1: 'Apple', 2: 'Orange'};
  print(fruit.length);
  print('There are ${fruit.length} elements in the map');
}
