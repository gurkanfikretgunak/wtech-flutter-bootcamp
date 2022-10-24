void main(List<String> args) {
  try {
    Car c1 = Car();
    if (c1.age == null || c1.model == null) throw NullCheckException();
  } on NullCheckException catch (e) {
    print(e);
  } finally {
    print('Finally');
  }
}

class Car {
  String? model;
  int? age;
}

class NullCheckException implements Exception {
  @override
  String toString() {
    print('The instance must be initiliazed');
    return super.toString();
  }
}
