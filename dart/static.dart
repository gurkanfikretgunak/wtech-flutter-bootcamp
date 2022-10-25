void main(List<String> args) {
  Customer customer1 = Customer(name: 'Batuhan', age: 22);
  print(Bank.capacity);
}

class Bank {
  static const bankName = 'XXX BANK';
  static int capacity = 100;

  static void addCustomer() {
    capacity++;
  }
}

class  Customer {
  final String name;
  final int age;

  Customer({required this.name, required this.age}) {
    Bank.addCustomer();
  }
}
