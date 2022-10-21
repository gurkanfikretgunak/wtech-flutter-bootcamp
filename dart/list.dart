void main(List<String> args) {
  var l1 = [
    1,
    2,
    3,
    4,
    'sl',
    1,
    2,
    {"key:value"},
    {"value"}
  ];

  List l2 = <int>[1, 2, 3, 4];
  List l3 = <String>['Batuhan', 'Ali'];

  List l4 = [1, 2, 3, ...l2];

  print('$l1 , $l2 , $l3');
}
