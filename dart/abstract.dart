abstract class ibrahim {
  // Creating Abstract Methods
  void say();
  void write();
}

class Aydan extends ibrahim {
  @override
  void say() {
    print("İbrahim Aydan Website");
  }

  @override
  void write() {
    print("ibrahimaydan.com");
  }
}

main() {
  Aydan kisi = new Aydan();
  kisi.say();
  kisi.write();
}
