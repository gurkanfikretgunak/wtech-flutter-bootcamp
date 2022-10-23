class CustomException implements Exception {
  String yearException() =>
      "Your birth year must be smaller than ${DateTime.now().year}";
}

calculateAge({required int birthYear}) {
  if (birthYear < DateTime.now().year) {
    return print("Your age is ${DateTime.now().year - birthYear}");
  }
  throw CustomException().yearException();
}

void main(List<String> args) {
  try {
    calculateAge(birthYear: 2000);
  } catch (e) {
    print(e);
  }
}
