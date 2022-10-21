void main() {
  //Bootcamp On Calisma
  var friends = {'Mertcan', 'Deniz', 'Baray', 'Onur', 'Emre', 'Ekincem'};
  var names = <String>{};
  names.add('Pelin');
  names.addAll(names);
  assert(names.length == 9);
  final constantSet = const {
    'Siyah',
    'Gri',
    'Beyaz',
    'Mor',
  };

  //Bootcamp

  var n1 = {"Value1", "Value2"};
  Set s2 = {"Value1", "Value2"};

  Set s3 = <String>{"Value1", "Value2"};
  Set s4 = <dynamic>{"Value1", 23};
  s4.add(25);
}
