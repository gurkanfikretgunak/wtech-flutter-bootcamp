main() {
  for (var i = 0; i < 7; i++) {
    print(i);
  }

  var collection = [37, 75, 57];
  for (var x in collection) {
    print(x);
  }

  var callbacks = [];
  for (var i = 7; i < 34; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c()); // invoke each callback
}
