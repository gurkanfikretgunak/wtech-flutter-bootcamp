void main(List<String> args) {
  // for
  // A standard for loop
  for (var i = 0; i < 3; i++) {
    print(i);
  }

  // 'for-in' can be used on any class that implements Iterable
  var collection = [3, 4, 5];
  for (var x in collection) {
    print(x);
  }

  // While Do - While Conditional
  var i = 0;

  // koşulu kontrol eder sonra body girer
  while (i++ < 2) {
    print("while $i");
  }

  var j = 0;

  // do-while conditions  önce işlemi yapar sonra koşula gider.
  do {
    print("dowhile $j");
  } while (j++ < 2);

//Swicht -Case ;

  var command = "OPEN";
  switch (command) {
    case "OPEN":
      print("is opend ");
      break;

    case "CLOSED":
      print("İs CLOSED ");
      break;
    case "BACK ":
      print("İS BACK");
      break;
    default:
  }
  var piece = 'queen';

  switch (piece) {
    case 'queen':
    case 'bishop':
      print('diagonal');
      break;
  }
}
