main() {
  for (var i = 0; i < 7; i++) {
    print(i);
  }

  var liste = [37, 75, 57];
  for (var x in liste) {
    print(x);
  }

  var list = [];
  for (var i = 7; i < 34; i++) {
    list.add(() => print(i));
  }
  list.forEach((c) => c()); // invoke each callback
}
