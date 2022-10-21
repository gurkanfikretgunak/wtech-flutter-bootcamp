void main(List<String> args) {
  var l1 = [1, 2, 3];
  List<int> l2 = [1, 2, 3, 4, 5];
  List<String> l3 = ['Melih', 'Mete', 'Gökalp'];
  List l4 = [1, 'Melih', 1.2, true, []];

  List l5 = [1, 2, 3, ...l4];
  List users = [...l3, ...l4];
  List usersAdress = [...l3, ...l4, ...l2];

  Map value = <String, dynamic>{
    'users': users,
    'usersAdress': usersAdress,
  };

  print('$l1 $l2 $l3 $l4 $l5');
  print(l3[0]);
}
