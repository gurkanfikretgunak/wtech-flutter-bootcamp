abstract class zexly {
  // Creating Abstract Methods
  void say();
  void write();
}

class Ahmet extends zexly {
  @override
  void say() {
    print("Ahmet Aydın Website");
  }

  @override
  void write() {
    print("www.ahmetaydin.dev");
  }
}

main() {
  Ahmet geek = new Ahmet();
  geek.say();
  geek.write();
}
